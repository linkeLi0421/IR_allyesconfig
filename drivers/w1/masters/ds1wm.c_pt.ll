; ModuleID = '/llk/IR_all_yes/drivers/w1/masters/ds1wm.c_pt.bc'
source_filename = "../drivers/w1/masters/ds1wm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.44 = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ds1wm_data = type { ptr, i32, i8, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32 }
%struct.ds1wm_driver_data = type { i32, i32, i32, i8, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@ds1wm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds1wm_probe, ptr @ds1wm_remove, ptr null, ptr @ds1wm_suspend, ptr @ds1wm_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ds1wm__204_668_ds1wm_init6 = internal global ptr @ds1wm_init, section ".initcall6.init", align 4
@__exitcall_ds1wm_exit = internal global ptr @ds1wm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file205 = internal constant [36 x i8] c"ds1wm.file=drivers/w1/masters/ds1wm\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [18 x i8] c"ds1wm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author207 = internal constant [134 x i8] c"ds1wm.author=Szabolcs Gyurko <szabolcs.gyurko@tlt.hu>, Matt Reimer <mreimer@vpop.net>,Jean-Francois Dagenais <dagenaisj@sonatest.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [44 x i8] c"ds1wm.description=DS1WM w1 busmaster driver\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ds1wm\00", [26 x i8] zeroinitializer }, align 32
@ds1wm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"illegal bus shift %d, not written\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1wm_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/w1/masters/ds1wm.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1wm_probe._entry_ptr = internal global ptr @ds1wm_probe._entry, section ".printk_index", align 4
@ds1wm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"memory resource size %d to small, should be %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ds1wm_probe._entry_ptr.8 = internal global ptr @ds1wm_probe._entry.6, section ".printk_index", align 4
@ds1wm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"devm_request_irq %d failed with errno %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ds1wm_probe._entry_ptr.11 = internal global ptr @ds1wm_probe._entry.9, section ".printk_index", align 4
@ds1wm_master = internal global { %struct.w1_bus_master, [44 x i8] } { %struct.w1_bus_master { ptr null, ptr null, ptr null, ptr null, ptr @ds1wm_read_byte, ptr @ds1wm_write_byte, ptr null, ptr null, ptr null, ptr @ds1wm_reset_bus, ptr null, ptr @ds1wm_search, ptr null }, [44 x i8] zeroinitializer }, align 32
@ds1wm_probe.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"ds1wm: probe successful, IAS: %d, rec.delay: %d, clockrate: %d, bus-shift: %d, is Hw Big Endian: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ds1wm_read_register.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds1wm_read_register\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ds1wm_read_register reg: %d, 32 bit val:%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ds1wm_up.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ds1wm_up\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"found divisor 0x%x for clock %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ds1wm_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no suitable divisor for %dHz clock\0A\00", [60 x i8] zeroinitializer }, align 32
@ds1wm_up._entry_ptr = internal global ptr @ds1wm_up._entry, section ".printk_index", align 4
@freq = internal constant { [24 x %struct.anon.44], [32 x i8] } { [24 x %struct.anon.44] [%struct.anon.44 { i32 1000000, i32 128 }, %struct.anon.44 { i32 2000000, i32 132 }, %struct.anon.44 { i32 3000000, i32 129 }, %struct.anon.44 { i32 4000000, i32 136 }, %struct.anon.44 { i32 5000000, i32 130 }, %struct.anon.44 { i32 6000000, i32 133 }, %struct.anon.44 { i32 7000000, i32 131 }, %struct.anon.44 { i32 8000000, i32 140 }, %struct.anon.44 { i32 10000000, i32 134 }, %struct.anon.44 { i32 12000000, i32 137 }, %struct.anon.44 { i32 14000000, i32 135 }, %struct.anon.44 { i32 16000000, i32 144 }, %struct.anon.44 { i32 20000000, i32 138 }, %struct.anon.44 { i32 24000000, i32 141 }, %struct.anon.44 { i32 28000000, i32 139 }, %struct.anon.44 { i32 32000000, i32 148 }, %struct.anon.44 { i32 40000000, i32 142 }, %struct.anon.44 { i32 48000000, i32 145 }, %struct.anon.44 { i32 56000000, i32 143 }, %struct.anon.44 { i32 64000000, i32 152 }, %struct.anon.44 { i32 80000000, i32 146 }, %struct.anon.44 { i32 96000000, i32 149 }, %struct.anon.44 { i32 112000000, i32 147 }, %struct.anon.44 { i32 128000000, i32 156 }], [32 x i8] zeroinitializer }, align 32
@ds1wm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset failed, timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1wm_reset\00", [20 x i8] zeroinitializer }, align 32
@ds1wm_reset._entry_ptr = internal global ptr @ds1wm_reset._entry, section ".printk_index", align 4
@ds1wm_reset.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset: no devices found\0A\00", [39 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ds1wm_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read failed, timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ds1wm_read\00", [21 x i8] zeroinitializer }, align 32
@ds1wm_read._entry_ptr = internal global ptr @ds1wm_read._entry, section ".printk_index", align 4
@ds1wm_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write failed, timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ds1wm_write\00", [20 x i8] zeroinitializer }, align 32
@ds1wm_write._entry_ptr = internal global ptr @ds1wm_write._entry, section ".printk_index", align 4
@ds1wm_search.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1wm_search\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"search begin\0A\00", [18 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"too many attempts (100), search aborted\0A\00", [55 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pass: %d reset error (or no slaves)\0A\00", [59 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.30, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pass: %d r : %0#18llx writing SEARCH_ROM\0A\00", [54 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.31, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pass: %d entering ASM\0A\00", [41 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.32, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pass: %d beginning nibble loop\0A\00", [32 x i8] zeroinitializer }, align 32
@ds1wm_search._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pass: %d nibble: %d read error\0A\00", [32 x i8] zeroinitializer }, align 32
@ds1wm_search._entry_ptr = internal global ptr @ds1wm_search._entry, section ".printk_index", align 4
@ds1wm_search._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pass: %d read error, retrying\0A\00", [33 x i8] zeroinitializer }, align 32
@ds1wm_search._entry_ptr.36 = internal global ptr @ds1wm_search._entry.34, section ".printk_index", align 4
@ds1wm_search.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.37, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pass: %d r': %0#18llx d:%0#18llx\0A\00", [62 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.38, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pass: %d nibble loop complete, exiting ASM\0A\00", [52 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.39, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pass: %d resetting bus\0A\00", [40 x i8] zeroinitializer }, align 32
@ds1wm_search._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.26, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pass: %d bus error, retrying\0A\00", [34 x i8] zeroinitializer }, align 32
@ds1wm_search._entry_ptr.42 = internal global ptr @ds1wm_search._entry.40, section ".printk_index", align 4
@ds1wm_search.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.43, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pass: %d found %0#18llx\0A\00", [39 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.44, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pass: %d complete, preparing next pass\0A\00", [56 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.45, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pass: %d new d:%0#18llx MS discrep bit:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@ds1wm_search.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.46, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pass: %d total: %d search done ms d bit pos: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ds1wm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016DS1WM w1 busmaster driver - (c) 2004 Szabolcs Gyurko\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ds1wm_init\00", [21 x i8] zeroinitializer }, align 32
@ds1wm_init._entry_ptr = internal global ptr @ds1wm_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"ds1wm_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 647, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 649, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 541, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 550, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 583, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"ds1wm_master\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 499, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 599, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 175, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 318, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 321, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 67, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 236, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 241, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 87, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 289, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 266, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 382, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 386, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 394, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 399, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 402, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 405, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 426, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 447, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 451, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 454, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 457, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 462, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 468, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 472, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 481, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 492, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [30 x i8] c"../drivers/w1/masters/ds1wm.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 659, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_license206, ptr @__exitcall_ds1wm_exit, ptr @__initcall__kmod_ds1wm__204_668_ds1wm_init6, ptr @ds1wm_exit, ptr @ds1wm_init._entry, ptr @ds1wm_init._entry_ptr, ptr @ds1wm_probe._entry, ptr @ds1wm_probe._entry.6, ptr @ds1wm_probe._entry.9, ptr @ds1wm_probe._entry_ptr, ptr @ds1wm_probe._entry_ptr.11, ptr @ds1wm_probe._entry_ptr.8, ptr @ds1wm_read._entry, ptr @ds1wm_read._entry_ptr, ptr @ds1wm_reset._entry, ptr @ds1wm_reset._entry_ptr, ptr @ds1wm_search._entry, ptr @ds1wm_search._entry.34, ptr @ds1wm_search._entry.40, ptr @ds1wm_search._entry_ptr, ptr @ds1wm_search._entry_ptr.36, ptr @ds1wm_search._entry_ptr.42, ptr @ds1wm_up._entry, ptr @ds1wm_up._entry_ptr, ptr @ds1wm_write._entry, ptr @ds1wm_write._entry_ptr, ptr @ds1wm_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ds1wm_master, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @freq, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_master to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_search._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_search._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_search._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1wm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1wm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds1wm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #10
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds1wm_driver, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @platform_get_resource(ptr noundef nonnull %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %1 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %2, i32 noundef %add.i) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %call.i, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %pdev15 = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %pdev15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev15, align 4
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 10
  %7 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mfd_cell.i, align 4
  %cell = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %cell, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_data.i, align 8
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %bus_shift = getelementptr inbounds %struct.ds1wm_driver_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp ugt i32 %13, 2
  %bus_shift29 = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 1
  br i1 %cmp, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bus_shift29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_shift29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %15) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %bus_shift29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %bus_shift29, align 4
  %shl = shl nuw nsw i32 8, %13
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %19 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call4, align 4
  %sub.i186 = add i32 %18, 1
  %add.i187 = sub i32 %sub.i186, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %add.i187)
  %cmp35 = icmp ugt i32 %shl, %add.i187
  br i1 %cmp35, label %do.end39, label %if.end45

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %add.i187, i32 noundef %shl) #10
  br label %cleanup

if.end45:                                         ; preds = %if.end30
  %is_hw_big_endian = getelementptr inbounds %struct.ds1wm_driver_data, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %is_hw_big_endian to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_hw_big_endian, align 4, !range !137
  %is_hw_big_endian47 = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %is_hw_big_endian47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %is_hw_big_endian47, align 4
  %call48 = tail call ptr @platform_get_resource(ptr noundef nonnull %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %24 = ptrtoint ptr %call48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call48, align 4
  %irq = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  %conv = select i1 %tobool53.not, i8 0, i8 2
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %int_en_reg_none, align 1
  %reset_recover_delay = getelementptr inbounds %struct.ds1wm_driver_data, ptr %11, i32 0, i32 2
  %30 = ptrtoint ptr %reset_recover_delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reset_recover_delay, align 4
  %reset_recover_delay54 = getelementptr inbounds %struct.ds1wm_data, ptr %call.i, i32 0, i32 13
  %32 = ptrtoint ptr %reset_recover_delay54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %reset_recover_delay54, align 4
  %33 = ptrtoint ptr %is_hw_big_endian47 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_hw_big_endian47, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %bus_shift29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_shift29, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end51
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %if.then.i.do.body.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb7.i
  ]

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 3
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv.i = zext i8 %40 to i32
  br label %do.body.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %42, i32 6
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv6.i = zext i16 %43 to i32
  br label %do.body.i

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %45, i32 12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %do.body.i

if.else.i:                                        ; preds = %if.end51
  %47 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %36, label %if.else.i.do.body.i_crit_edge [
    i32 0, label %sw.bb15.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb27.i
  ]

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb15.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %49, i32 3
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv20.i = zext i8 %50 to i32
  br label %do.body.i

sw.bb21.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %52, i32 6
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i) #7, !srcloc !140
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv26.i = zext i16 %54 to i32
  br label %do.body.i

sw.bb27.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %56, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !142
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %if.else.i.do.body.i_crit_edge, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %if.then.i.do.body.i_crit_edge
  %val.0.i = phi i32 [ 0, %if.then.i.do.body.i_crit_edge ], [ %46, %sw.bb7.i ], [ %conv6.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ], [ 0, %if.else.i.do.body.i_crit_edge ], [ %58, %sw.bb27.i ], [ %conv26.i, %sw.bb21.i ], [ %conv20.i, %sw.bb15.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_probe, %if.then38.i)) #7
          to label %ds1wm_read_register.exit [label %if.then38.i], !srcloc !146

if.then38.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev15, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_read_register.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef %val.0.i) #7
  br label %ds1wm_read_register.exit

ds1wm_read_register.exit:                         ; preds = %if.then38.i, %do.body.i
  %61 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %int_en_reg_none, align 1
  tail call fastcc void @ds1wm_write_register(ptr noundef nonnull %call.i, i32 noundef 3, i8 noundef zeroext %62)
  %flags = getelementptr inbounds %struct.resource, ptr %call48, i32 0, i32 3
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %ds1wm_read_register.exit.if.end61_crit_edge, label %if.then58

ds1wm_read_register.exit.if.end61_crit_edge:      ; preds = %ds1wm_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %ds1wm_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  %call60 = tail call i32 @irq_set_irq_type(i32 noundef %66, i32 noundef 1) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %ds1wm_read_register.exit.if.end61_crit_edge
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  %and63 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end68_crit_edge, label %if.then65

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  %call67 = tail call i32 @irq_set_irq_type(i32 noundef %70, i32 noundef 2) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %and70 = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end75_crit_edge, label %if.then72

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq, align 4
  %call74 = tail call i32 @irq_set_irq_type(i32 noundef %74, i32 noundef 4) #7
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end68.if.end75_crit_edge
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %and77 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end75.if.end82_crit_edge, label %if.then79

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 4
  %call81 = tail call i32 @irq_set_irq_type(i32 noundef %78, i32 noundef 8) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  %call.i191 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %80, ptr noundef nonnull @ds1wm_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool86.not = icmp eq i32 %call.i191, 0
  br i1 %tobool86.not, label %if.end94, label %do.end90

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev15, align 4
  %dev92 = getelementptr inbounds %struct.platform_device, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.10, i32 noundef %84, i32 noundef %call.i191) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end82
  tail call fastcc void @ds1wm_up(ptr noundef nonnull %call.i)
  store ptr %call.i, ptr @ds1wm_master, align 4
  %call95 = tail call i32 @w1_add_master_device(ptr noundef nonnull @ds1wm_master) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body99, label %err

do.body99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_probe.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_probe, %if.then105)) #7
          to label %cleanup [label %if.then105], !srcloc !146

if.then105:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev15, align 4
  %dev107 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %11, align 4
  %89 = ptrtoint ptr %reset_recover_delay to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reset_recover_delay, align 4
  %clock_rate = getelementptr inbounds %struct.ds1wm_driver_data, ptr %11, i32 0, i32 1
  %91 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %clock_rate, align 4
  %93 = ptrtoint ptr %bus_shift29 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bus_shift29, align 4
  %95 = ptrtoint ptr %is_hw_big_endian47 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %is_hw_big_endian47, align 4, !range !137
  %97 = zext i8 %96 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_probe.__UNIQUE_ID_ddebug203, ptr noundef %dev107, ptr noundef nonnull @.str.12, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %97) #7
  br label %cleanup

err:                                              ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ds1wm_down(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then105, %do.body99, %do.end90, %if.end45.cleanup_crit_edge, %do.end39, %do.end, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ %call.i191, %do.end90 ], [ %call95, %err ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ -19, %if.end20.cleanup_crit_edge ], [ -6, %if.end45.cleanup_crit_edge ], [ 0, %if.then105 ], [ 0, %do.body99 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @w1_remove_master_device(ptr noundef nonnull @ds1wm_master) #7
  %call.i = tail call fastcc i32 @ds1wm_reset(ptr noundef %1) #7
  %int_en_reg_none.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %int_en_reg_none.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_en_reg_none.i, align 1
  tail call fastcc void @ds1wm_write_register(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %3) #7
  %cell.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cell.i, align 4
  %disable.i = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ds1wm_down.exit_crit_edge, label %if.then.i

entry.ds1wm_down.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds1wm_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %9) #7
  br label %ds1wm_down.exit

ds1wm_down.exit:                                  ; preds = %if.then.i, %entry.ds1wm_down.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call fastcc i32 @ds1wm_reset(ptr noundef %1) #7
  %int_en_reg_none.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %int_en_reg_none.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_en_reg_none.i, align 1
  tail call fastcc void @ds1wm_write_register(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %3) #7
  %cell.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cell.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cell.i, align 4
  %disable.i = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ds1wm_down.exit_crit_edge, label %if.then.i

entry.ds1wm_down.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds1wm_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.ds1wm_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %call3.i = tail call i32 %7(ptr noundef %9) #7
  br label %ds1wm_down.exit

ds1wm_down.exit:                                  ; preds = %if.then.i, %entry.ds1wm_down.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @ds1wm_up(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1wm_write_register(ptr nocapture noundef readonly %ds1wm_data, i32 noundef %reg, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %is_hw_big_endian = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 2
  %0 = ptrtoint ptr %is_hw_big_endian to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hw_big_endian, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %bus_shift12 = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift12, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.body
    i32 2, label %do.body6
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #7, !srcloc !148
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %conv = zext i8 %val to i16
  %7 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds1wm_data, align 4
  %shl3 = shl i32 %reg, 1
  %add.ptr4 = getelementptr i8, ptr %8, i32 %shl3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %conv) #7, !srcloc !150
  br label %if.end

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %conv8 = zext i8 %val to i32
  %9 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds1wm_data, align 4
  %shl10 = shl i32 %reg, 2
  %add.ptr11 = getelementptr i8, ptr %10, i32 %shl10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %conv8) #7, !srcloc !152
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %if.else.if.end_crit_edge [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb17
    i32 2, label %sw.bb22
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %val) #7, !srcloc !148
  br label %if.end

sw.bb17:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = zext i8 %val to i16
  %14 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds1wm_data, align 4
  %shl20 = shl i32 %reg, 1
  %add.ptr21 = getelementptr i8, ptr %15, i32 %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %16 = shl nuw i16 %conv18, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21, i16 %16) #7, !srcloc !150
  br label %if.end

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i8 %val to i32
  %17 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds1wm_data, align 4
  %shl25 = shl i32 %reg, 2
  %add.ptr26 = getelementptr i8, ptr %18, i32 %shl25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %19 = shl nuw i32 %conv23, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %19) #7, !srcloc !152
  br label %if.end

if.end:                                           ; preds = %sw.bb22, %sw.bb17, %sw.bb13, %if.else.if.end_crit_edge, %do.body6, %do.body, %sw.bb, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1wm_isr(i32 noundef %isr, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_hw_big_endian.i = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %is_hw_big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_hw_big_endian.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %bus_shift14.i = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_shift14.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift14.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %3, label %if.then.i.do.body.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb7.i
  ]

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv.i = zext i8 %7 to i32
  br label %do.body.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 6
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv6.i = zext i16 %10 to i32
  br label %do.body.i

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %add.ptr11.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %14 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %if.else.i.do.body.i_crit_edge [
    i32 0, label %sw.bb15.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb27.i
  ]

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb15.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr18.i = getelementptr i8, ptr %16, i32 3
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv20.i = zext i8 %17 to i32
  br label %do.body.i

sw.bb21.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %add.ptr24.i = getelementptr i8, ptr %19, i32 6
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i) #7, !srcloc !140
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv26.i = zext i16 %21 to i32
  br label %do.body.i

sw.bb27.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr30.i = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !142
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %if.else.i.do.body.i_crit_edge, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %if.then.i.do.body.i_crit_edge
  %val.0.i = phi i32 [ 0, %if.then.i.do.body.i_crit_edge ], [ %13, %sw.bb7.i ], [ %conv6.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ], [ 0, %if.else.i.do.body.i_crit_edge ], [ %25, %sw.bb27.i ], [ %conv26.i, %sw.bb21.i ], [ %conv20.i, %sw.bb15.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_isr, %if.then38.i)) #7
          to label %ds1wm_read_register.exit [label %if.then38.i], !srcloc !146

if.then38.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_read_register.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef %val.0.i) #7
  br label %ds1wm_read_register.exit

ds1wm_read_register.exit:                         ; preds = %if.then38.i, %do.body.i
  %conv40.i = trunc i32 %val.0.i to i8
  %28 = and i8 %conv40.i, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %ds1wm_read_register.exit.cleanup_crit_edge, label %if.end

ds1wm_read_register.exit.cleanup_crit_edge:       ; preds = %ds1wm_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ds1wm_read_register.exit
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 12
  %29 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %int_en_reg_none, align 1
  tail call fastcc void @ds1wm_write_register(ptr noundef %data, i32 noundef 3, i8 noundef zeroext %30)
  %31 = ptrtoint ptr %is_hw_big_endian.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_hw_big_endian.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i64 = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %bus_shift14.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_shift14.i, align 4
  br i1 %tobool.not.i64, label %if.else.i75, label %if.then.i66

if.then.i66:                                      ; preds = %if.end
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %34, label %if.then.i66.do.body.i85_crit_edge [
    i32 0, label %sw.bb.i69
    i32 1, label %sw.bb1.i72
    i32 2, label %sw.bb7.i74
  ]

if.then.i66.do.body.i85_crit_edge:                ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i85

sw.bb.i69:                                        ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 2
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i67) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv.i68 = zext i8 %38 to i32
  br label %do.body.i85

sw.bb1.i72:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr4.i70 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i70) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv6.i71 = zext i16 %41 to i32
  br label %do.body.i85

sw.bb7.i74:                                       ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %add.ptr11.i73 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i73) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %do.body.i85

if.else.i75:                                      ; preds = %if.end
  %45 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %34, label %if.else.i75.do.body.i85_crit_edge [
    i32 0, label %sw.bb15.i78
    i32 1, label %sw.bb21.i81
    i32 2, label %sw.bb27.i83
  ]

if.else.i75.do.body.i85_crit_edge:                ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i85

sw.bb15.i78:                                      ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr18.i76 = getelementptr i8, ptr %47, i32 2
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i76) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv20.i77 = zext i8 %48 to i32
  br label %do.body.i85

sw.bb21.i81:                                      ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %add.ptr24.i79 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i79) #7, !srcloc !140
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv26.i80 = zext i16 %52 to i32
  br label %do.body.i85

sw.bb27.i83:                                      ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %add.ptr30.i82 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i82) #7, !srcloc !142
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  br label %do.body.i85

do.body.i85:                                      ; preds = %sw.bb27.i83, %sw.bb21.i81, %sw.bb15.i78, %if.else.i75.do.body.i85_crit_edge, %sw.bb7.i74, %sw.bb1.i72, %sw.bb.i69, %if.then.i66.do.body.i85_crit_edge
  %val.0.i84 = phi i32 [ 0, %if.then.i66.do.body.i85_crit_edge ], [ %44, %sw.bb7.i74 ], [ %conv6.i71, %sw.bb1.i72 ], [ %conv.i68, %sw.bb.i69 ], [ 0, %if.else.i75.do.body.i85_crit_edge ], [ %56, %sw.bb27.i83 ], [ %conv26.i80, %sw.bb21.i81 ], [ %conv20.i77, %sw.bb15.i78 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_isr, %if.then38.i88)) #7
          to label %ds1wm_read_register.exit90 [label %if.then38.i88], !srcloc !146

if.then38.i88:                                    ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i86 = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 3
  %57 = ptrtoint ptr %pdev.i86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev.i86, align 4
  %dev.i87 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_read_register.__UNIQUE_ID_ddebug187, ptr noundef %dev.i87, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef %val.0.i84) #7
  br label %ds1wm_read_register.exit90

ds1wm_read_register.exit90:                       ; preds = %if.then38.i88, %do.body.i85
  %and3 = lshr i32 %val.0.i84, 1
  %and3.lobit = and i32 %and3, 1
  %59 = xor i32 %and3.lobit, 1
  %slave_present = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 6
  %60 = ptrtoint ptr %slave_present to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %slave_present, align 4
  %and6 = and i32 %val.0.i84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %ds1wm_read_register.exit90.if.end14_crit_edge, label %land.lhs.true

ds1wm_read_register.exit90.if.end14_crit_edge:    ; preds = %ds1wm_read_register.exit90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %ds1wm_read_register.exit90
  %write_complete = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 9
  %61 = ptrtoint ptr %write_complete to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_complete, align 4
  %tobool8.not = icmp eq ptr %62, null
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i8 %conv40.i, -9
  tail call void @complete(ptr noundef nonnull %62) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %ds1wm_read_register.exit90.if.end14_crit_edge
  %inten.0 = phi i8 [ %and11, %if.then9 ], [ %conv40.i, %land.lhs.true.if.end14_crit_edge ], [ %conv40.i, %ds1wm_read_register.exit90.if.end14_crit_edge ]
  %and16 = and i32 %val.0.i84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end27_crit_edge, label %if.then18

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then18:                                        ; preds = %if.end14
  %63 = ptrtoint ptr %is_hw_big_endian.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_hw_big_endian.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i92 = icmp eq i8 %64, 0
  %65 = ptrtoint ptr %bus_shift14.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bus_shift14.i, align 4
  br i1 %tobool.not.i92, label %if.else.i103, label %if.then.i94

if.then.i94:                                      ; preds = %if.then18
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %66, label %if.then.i94.do.body.i113_crit_edge [
    i32 0, label %sw.bb.i97
    i32 1, label %sw.bb1.i100
    i32 2, label %sw.bb7.i102
  ]

if.then.i94.do.body.i113_crit_edge:               ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i113

sw.bb.i97:                                        ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %add.ptr.i95 = getelementptr i8, ptr %69, i32 1
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i95) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv.i96 = zext i8 %70 to i32
  br label %do.body.i113

sw.bb1.i100:                                      ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %add.ptr4.i98 = getelementptr i8, ptr %72, i32 2
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i98) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv6.i99 = zext i16 %73 to i32
  br label %do.body.i113

sw.bb7.i102:                                      ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %add.ptr11.i101 = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i101) #7, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %do.body.i113

if.else.i103:                                     ; preds = %if.then18
  %77 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %66, label %if.else.i103.do.body.i113_crit_edge [
    i32 0, label %sw.bb15.i106
    i32 1, label %sw.bb21.i109
    i32 2, label %sw.bb27.i111
  ]

if.else.i103.do.body.i113_crit_edge:              ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i113

sw.bb15.i106:                                     ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %add.ptr18.i104 = getelementptr i8, ptr %79, i32 1
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i104) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv20.i105 = zext i8 %80 to i32
  br label %do.body.i113

sw.bb21.i109:                                     ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %add.ptr24.i107 = getelementptr i8, ptr %82, i32 2
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i107) #7, !srcloc !140
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv26.i108 = zext i16 %84 to i32
  br label %do.body.i113

sw.bb27.i111:                                     ; preds = %if.else.i103
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %add.ptr30.i110 = getelementptr i8, ptr %86, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i110) #7, !srcloc !142
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  br label %do.body.i113

do.body.i113:                                     ; preds = %sw.bb27.i111, %sw.bb21.i109, %sw.bb15.i106, %if.else.i103.do.body.i113_crit_edge, %sw.bb7.i102, %sw.bb1.i100, %sw.bb.i97, %if.then.i94.do.body.i113_crit_edge
  %val.0.i112 = phi i32 [ 0, %if.then.i94.do.body.i113_crit_edge ], [ %76, %sw.bb7.i102 ], [ %conv6.i99, %sw.bb1.i100 ], [ %conv.i96, %sw.bb.i97 ], [ 0, %if.else.i103.do.body.i113_crit_edge ], [ %88, %sw.bb27.i111 ], [ %conv26.i108, %sw.bb21.i109 ], [ %conv20.i105, %sw.bb15.i106 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_isr, %if.then38.i116)) #7
          to label %ds1wm_read_register.exit118 [label %if.then38.i116], !srcloc !146

if.then38.i116:                                   ; preds = %do.body.i113
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i114 = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 3
  %89 = ptrtoint ptr %pdev.i114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev.i114, align 4
  %dev.i115 = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_read_register.__UNIQUE_ID_ddebug187, ptr noundef %dev.i115, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef %val.0.i112) #7
  br label %ds1wm_read_register.exit118

ds1wm_read_register.exit118:                      ; preds = %if.then38.i116, %do.body.i113
  %conv40.i117 = trunc i32 %val.0.i112 to i8
  %read_byte = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 11
  %91 = ptrtoint ptr %read_byte to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv40.i117, ptr %read_byte, align 4
  %92 = and i8 %inten.0, -17
  %read_complete = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 8
  %93 = ptrtoint ptr %read_complete to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_complete, align 4
  %tobool23.not = icmp eq ptr %94, null
  br i1 %tobool23.not, label %ds1wm_read_register.exit118.if.end27_crit_edge, label %if.then24

ds1wm_read_register.exit118.if.end27_crit_edge:   ; preds = %ds1wm_read_register.exit118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %ds1wm_read_register.exit118
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %94) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %ds1wm_read_register.exit118.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  %inten.1 = phi i8 [ %92, %if.then24 ], [ %92, %ds1wm_read_register.exit118.if.end27_crit_edge ], [ %inten.0, %if.end14.if.end27_crit_edge ]
  %and29 = and i32 %val.0.i84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end38_crit_edge, label %land.lhs.true31

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true31:                                  ; preds = %if.end27
  %reset_complete = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 7
  %95 = ptrtoint ptr %reset_complete to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reset_complete, align 4
  %tobool32.not = icmp eq ptr %96, null
  br i1 %tobool32.not, label %land.lhs.true31.if.end38_crit_edge, label %if.then33

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  %97 = and i8 %inten.1, -2
  tail call void @complete(ptr noundef nonnull %96) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %land.lhs.true31.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %inten.2 = phi i8 [ %97, %if.then33 ], [ %inten.1, %land.lhs.true31.if.end38_crit_edge ], [ %inten.1, %if.end27.if.end38_crit_edge ]
  tail call fastcc void @ds1wm_write_register(ptr noundef %data, i32 noundef 3, i8 noundef zeroext %inten.2)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %ds1wm_read_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end38 ], [ 0, %ds1wm_read_register.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1wm_up(ptr nocapture noundef %ds1wm_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %cell = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 4
  %4 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cell, align 4
  %enable = getelementptr inbounds %struct.mfd_cell, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 %7(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clock_rate = getelementptr inbounds %struct.ds1wm_driver_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000000, i32 %9)
  %cmp1.not.i = icmp ult i32 %9, 128000000
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.22.i.if.then.i_crit_edge, %for.inc.21.i.if.then.i_crit_edge, %for.inc.20.i.if.then.i_crit_edge, %for.inc.19.i.if.then.i_crit_edge, %for.inc.18.i.if.then.i_crit_edge, %for.inc.17.i.if.then.i_crit_edge, %for.inc.16.i.if.then.i_crit_edge, %for.inc.15.i.if.then.i_crit_edge, %for.inc.14.i.if.then.i_crit_edge, %for.inc.13.i.if.then.i_crit_edge, %for.inc.12.i.if.then.i_crit_edge, %for.inc.11.i.if.then.i_crit_edge, %for.inc.10.i.if.then.i_crit_edge, %for.inc.9.i.if.then.i_crit_edge, %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 23, %if.end.if.then.i_crit_edge ], [ 22, %for.inc.i.if.then.i_crit_edge ], [ 21, %for.inc.1.i.if.then.i_crit_edge ], [ 20, %for.inc.2.i.if.then.i_crit_edge ], [ 19, %for.inc.3.i.if.then.i_crit_edge ], [ 18, %for.inc.4.i.if.then.i_crit_edge ], [ 17, %for.inc.5.i.if.then.i_crit_edge ], [ 16, %for.inc.6.i.if.then.i_crit_edge ], [ 15, %for.inc.7.i.if.then.i_crit_edge ], [ 14, %for.inc.8.i.if.then.i_crit_edge ], [ 13, %for.inc.9.i.if.then.i_crit_edge ], [ 12, %for.inc.10.i.if.then.i_crit_edge ], [ 11, %for.inc.11.i.if.then.i_crit_edge ], [ 10, %for.inc.12.i.if.then.i_crit_edge ], [ 9, %for.inc.13.i.if.then.i_crit_edge ], [ 8, %for.inc.14.i.if.then.i_crit_edge ], [ 7, %for.inc.15.i.if.then.i_crit_edge ], [ 6, %for.inc.16.i.if.then.i_crit_edge ], [ 5, %for.inc.17.i.if.then.i_crit_edge ], [ 4, %for.inc.18.i.if.then.i_crit_edge ], [ 3, %for.inc.19.i.if.then.i_crit_edge ], [ 2, %for.inc.20.i.if.then.i_crit_edge ], [ 1, %for.inc.21.i.if.then.i_crit_edge ], [ 0, %for.inc.22.i.if.then.i_crit_edge ]
  %divisor.i = getelementptr [24 x %struct.anon.44], ptr @freq, i32 0, i32 %i.07.lcssa.i, i32 1
  %10 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %divisor.i, align 4
  br label %ds1wm_find_divisor.exit

for.inc.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 112000000, i32 %9)
  %cmp1.not.1.i = icmp ult i32 %9, 112000000
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then.i_crit_edge

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000000, i32 %9)
  %cmp1.not.2.i = icmp ult i32 %9, 96000000
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then.i_crit_edge

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %9)
  %cmp1.not.3.i = icmp ult i32 %9, 80000000
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.then.i_crit_edge

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000000, i32 %9)
  %cmp1.not.4.i = icmp ult i32 %9, 64000000
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.then.i_crit_edge

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56000000, i32 %9)
  %cmp1.not.5.i = icmp ult i32 %9, 56000000
  br i1 %cmp1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.if.then.i_crit_edge

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000000, i32 %9)
  %cmp1.not.6.i = icmp ult i32 %9, 48000000
  br i1 %cmp1.not.6.i, label %for.inc.6.i, label %for.inc.5.i.if.then.i_crit_edge

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %9)
  %cmp1.not.7.i = icmp ult i32 %9, 40000000
  br i1 %cmp1.not.7.i, label %for.inc.7.i, label %for.inc.6.i.if.then.i_crit_edge

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000000, i32 %9)
  %cmp1.not.8.i = icmp ult i32 %9, 32000000
  br i1 %cmp1.not.8.i, label %for.inc.8.i, label %for.inc.7.i.if.then.i_crit_edge

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28000000, i32 %9)
  %cmp1.not.9.i = icmp ult i32 %9, 28000000
  br i1 %cmp1.not.9.i, label %for.inc.9.i, label %for.inc.8.i.if.then.i_crit_edge

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %9)
  %cmp1.not.10.i = icmp ult i32 %9, 24000000
  br i1 %cmp1.not.10.i, label %for.inc.10.i, label %for.inc.9.i.if.then.i_crit_edge

for.inc.9.i.if.then.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %9)
  %cmp1.not.11.i = icmp ult i32 %9, 20000000
  br i1 %cmp1.not.11.i, label %for.inc.11.i, label %for.inc.10.i.if.then.i_crit_edge

for.inc.10.i.if.then.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %9)
  %cmp1.not.12.i = icmp ult i32 %9, 16000000
  br i1 %cmp1.not.12.i, label %for.inc.12.i, label %for.inc.11.i.if.then.i_crit_edge

for.inc.11.i.if.then.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %9)
  %cmp1.not.13.i = icmp ult i32 %9, 14000000
  br i1 %cmp1.not.13.i, label %for.inc.13.i, label %for.inc.12.i.if.then.i_crit_edge

for.inc.12.i.if.then.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %9)
  %cmp1.not.14.i = icmp ult i32 %9, 12000000
  br i1 %cmp1.not.14.i, label %for.inc.14.i, label %for.inc.13.i.if.then.i_crit_edge

for.inc.13.i.if.then.i_crit_edge:                 ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %9)
  %cmp1.not.15.i = icmp ult i32 %9, 10000000
  br i1 %cmp1.not.15.i, label %for.inc.15.i, label %for.inc.14.i.if.then.i_crit_edge

for.inc.14.i.if.then.i_crit_edge:                 ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.15.i:                                     ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %9)
  %cmp1.not.16.i = icmp ult i32 %9, 8000000
  br i1 %cmp1.not.16.i, label %for.inc.16.i, label %for.inc.15.i.if.then.i_crit_edge

for.inc.15.i.if.then.i_crit_edge:                 ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.16.i:                                     ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %9)
  %cmp1.not.17.i = icmp ult i32 %9, 7000000
  br i1 %cmp1.not.17.i, label %for.inc.17.i, label %for.inc.16.i.if.then.i_crit_edge

for.inc.16.i.if.then.i_crit_edge:                 ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.17.i:                                     ; preds = %for.inc.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %9)
  %cmp1.not.18.i = icmp ult i32 %9, 6000000
  br i1 %cmp1.not.18.i, label %for.inc.18.i, label %for.inc.17.i.if.then.i_crit_edge

for.inc.17.i.if.then.i_crit_edge:                 ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.18.i:                                     ; preds = %for.inc.17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %9)
  %cmp1.not.19.i = icmp ult i32 %9, 5000000
  br i1 %cmp1.not.19.i, label %for.inc.19.i, label %for.inc.18.i.if.then.i_crit_edge

for.inc.18.i.if.then.i_crit_edge:                 ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.19.i:                                     ; preds = %for.inc.18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %9)
  %cmp1.not.20.i = icmp ult i32 %9, 4000000
  br i1 %cmp1.not.20.i, label %for.inc.20.i, label %for.inc.19.i.if.then.i_crit_edge

for.inc.19.i.if.then.i_crit_edge:                 ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.20.i:                                     ; preds = %for.inc.19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %9)
  %cmp1.not.21.i = icmp ult i32 %9, 3000000
  br i1 %cmp1.not.21.i, label %for.inc.21.i, label %for.inc.20.i.if.then.i_crit_edge

for.inc.20.i.if.then.i_crit_edge:                 ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.21.i:                                     ; preds = %for.inc.20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %9)
  %cmp1.not.22.i = icmp ult i32 %9, 2000000
  br i1 %cmp1.not.22.i, label %for.inc.22.i, label %for.inc.21.i.if.then.i_crit_edge

for.inc.21.i.if.then.i_crit_edge:                 ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.22.i:                                     ; preds = %for.inc.21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %9)
  %cmp1.not.23.i = icmp ult i32 %9, 1000000
  br i1 %cmp1.not.23.i, label %for.inc.22.i.ds1wm_find_divisor.exit_crit_edge, label %for.inc.22.i.if.then.i_crit_edge

for.inc.22.i.if.then.i_crit_edge:                 ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.inc.22.i.ds1wm_find_divisor.exit_crit_edge:   ; preds = %for.inc.22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds1wm_find_divisor.exit

ds1wm_find_divisor.exit:                          ; preds = %for.inc.22.i.ds1wm_find_divisor.exit_crit_edge, %if.then.i
  %retval.0.i34 = phi i32 [ %11, %if.then.i ], [ 0, %for.inc.22.i.ds1wm_find_divisor.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_up.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_up, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !146

if.then11:                                        ; preds = %ds1wm_find_divisor.exit
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clock_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_up.__UNIQUE_ID_ddebug189, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i34, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %ds1wm_find_divisor.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i34)
  %cmp = icmp eq i32 %retval.0.i34, 0
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %clock_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clock_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %15) #10
  br label %cleanup

if.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %retval.0.i34 to i8
  tail call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 4, i8 noundef zeroext %conv)
  tail call void @msleep(i32 noundef 1) #7
  %call20 = tail call fastcc i32 @ds1wm_reset(ptr noundef %ds1wm_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_add_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1wm_down(ptr nocapture noundef %ds1wm_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ds1wm_reset(ptr noundef %ds1wm_data)
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 12
  %0 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %int_en_reg_none, align 1
  tail call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 3, i8 noundef zeroext %1)
  %cell = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 4
  %2 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cell, align 4
  %disable = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call3 = tail call i32 %5(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds1wm_reset(ptr nocapture noundef %ds1wm_data) unnamed_addr #2 align 64 {
entry:
  %reset_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %reset_done) #7
  %0 = getelementptr inbounds i8, ptr %reset_done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %reset_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reset_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %reset_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #7
  %reset_complete = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 7
  %3 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reset_done, ptr %reset_complete, align 4
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 12
  %4 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_en_reg_none, align 1
  %6 = or i8 %5, 1
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 3, i8 noundef zeroext %6)
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 0, i8 noundef zeroext 1)
  %call = call i32 @wait_for_completion_timeout(ptr noundef nonnull %reset_done, i32 noundef 500) #7
  %7 = ptrtoint ptr %reset_complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %reset_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_present = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 6
  %10 = ptrtoint ptr %slave_present to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %do.body5, label %if.end17

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_reset.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_reset, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !146

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %pdev12 = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %12 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_reset.__UNIQUE_ID_ddebug188, ptr noundef %dev13, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %reset_recover_delay = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 13
  %14 = ptrtoint ptr %reset_recover_delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_recover_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.then11, %do.body5, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.then11 ], [ 0, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ], [ 1, %do.body5 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %reset_done) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds1wm_read_byte(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @ds1wm_read(ptr noundef %data, i8 noundef zeroext -1)
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds1wm_write_byte(ptr nocapture noundef %data, i8 noundef zeroext %byte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ds1wm_write(ptr noundef %data, i8 noundef zeroext %byte)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds1wm_reset_bus(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ds1wm_reset(ptr noundef %data)
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds1wm_search(ptr noundef %data, ptr noundef %master_dev, i8 noundef zeroext %search_type, ptr nocapture noundef readonly %slave_found) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %master_dev, i32 0, i32 21
  %pdev59 = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 3
  %read_error = getelementptr inbounds %struct.ds1wm_data, ptr %data, i32 0, i32 10
  br label %if.end22.lr.ph

if.end22.lr.ph:                                   ; preds = %if.end308.if.end22.lr.ph_crit_edge, %do.end
  %inc498504 = phi i32 [ 1, %do.end ], [ %inc498, %if.end308.if.end22.lr.ph_crit_edge ]
  %ms_discrep_bit.0.ph503 = phi i32 [ -1, %do.end ], [ %sub, %if.end308.if.end22.lr.ph_crit_edge ]
  %r.0.ph502 = phi i64 [ 0, %do.end ], [ %or315, %if.end308.if.end22.lr.ph_crit_edge ]
  %slaves_found.0.ph501 = phi i32 [ 0, %do.end ], [ %inc266, %if.end308.if.end22.lr.ph_crit_edge ]
  br label %if.end22

do.body4:                                         ; preds = %if.end308.do.body4_crit_edge, %do.end244.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then16)) #7
          to label %cleanup334 [label %if.then16], !srcloc !146

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev59, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug191, ptr noundef %dev18, ptr noundef nonnull @.str.28) #7
  br label %cleanup334

if.end22:                                         ; preds = %do.end244.if.end22_crit_edge, %if.end22.lr.ph
  %inc500 = phi i32 [ %inc498504, %if.end22.lr.ph ], [ %inc, %do.end244.if.end22_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  %call23 = tail call fastcc i32 @ds1wm_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body46, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then39)) #7
          to label %do.body316 [label %if.then39], !srcloc !146

if.then39:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev59, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug192, ptr noundef %dev41, ptr noundef nonnull @.str.29, i32 noundef %inc500) #7
  br label %do.body316

do.body46:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then58)) #7
          to label %do.end63 [label %if.then58], !srcloc !146

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev59, align 4
  %dev60 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug193, ptr noundef %dev60, ptr noundef nonnull @.str.30, i32 noundef %inc500, i64 noundef %r.0.ph502) #7
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body46
  tail call fastcc void @ds1wm_write(ptr noundef %data, i8 noundef zeroext %search_type)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then77)) #7
          to label %do.end82 [label %if.then77], !srcloc !146

if.then77:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev59, align 4
  %dev79 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug194, ptr noundef %dev79, ptr noundef nonnull @.str.31, i32 noundef %inc500) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.end63
  tail call fastcc void @ds1wm_write_register(ptr noundef %data, i32 noundef 0, i8 noundef zeroext 2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then95)) #7
          to label %for.body [label %if.then95], !srcloc !146

if.then95:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev59, align 4
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug195, ptr noundef %dev97, ptr noundef nonnull @.str.32, i32 noundef %inc500) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then95, %do.end82
  %i.0497 = phi i32 [ %inc170, %for.inc.for.body_crit_edge ], [ 0, %do.end82 ], [ 0, %if.then95 ]
  %r_prime.0496 = phi i64 [ %or161, %for.inc.for.body_crit_edge ], [ 0, %do.end82 ], [ 0, %if.then95 ]
  %d.0495 = phi i64 [ %or166, %for.inc.for.body_crit_edge ], [ 0, %do.end82 ], [ 0, %if.then95 ]
  %mul = shl i32 %i.0497, 2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %r.0.ph502, %sh_prom
  %12 = trunc i64 %shr to i32
  %and103 = shl i32 %12, 1
  %shl = and i32 %and103, 2
  %and105 = shl i32 %12, 2
  %shl106 = and i32 %and105, 8
  %or = or i32 %shl, %shl106
  %and108 = shl i32 %12, 3
  %shl109 = and i32 %and108, 32
  %or110 = or i32 %or, %shl109
  %and112 = shl i32 %12, 4
  %shl113 = and i32 %and112, 128
  %or114 = or i32 %or110, %shl113
  %conv115 = trunc i32 %or114 to i8
  %call116 = tail call fastcc zeroext i8 @ds1wm_read(ptr noundef %data, i8 noundef zeroext %conv115)
  %13 = ptrtoint ptr %read_error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool117.not = icmp eq i32 %14, 0
  br i1 %tobool117.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev59, align 4
  %dev123 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.33, i32 noundef %inc500, i32 noundef %i.0497) #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %and126 = lshr i8 %call116, 1
  %17 = and i8 %and126, 1
  %and129 = lshr i8 %call116, 2
  %18 = and i8 %and129, 2
  %or131 = or i8 %17, %18
  %and133 = lshr i8 %call116, 3
  %19 = and i8 %and133, 4
  %or135 = or i8 %or131, %19
  %and137 = lshr i8 %call116, 4
  %20 = and i8 %and137, 8
  %or139 = or i8 %or135, %20
  %and142 = and i8 %call116, 1
  %21 = and i8 %and126, 2
  %or147 = or i8 %21, %and142
  %22 = and i8 %and129, 4
  %or151 = or i8 %or147, %22
  %23 = and i8 %and133, 8
  %or155 = or i8 %or151, %23
  %conv157 = zext i8 %or139 to i64
  %shl160 = shl i64 %conv157, %sh_prom
  %or161 = or i64 %shl160, %r_prime.0496
  %conv162 = zext i8 %or155 to i64
  %shl165 = shl i64 %conv162, %sh_prom
  %or166 = or i64 %shl165, %d.0495
  %inc170 = add nuw nsw i32 %i.0497, 1
  %exitcond.not = icmp eq i32 %inc170, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %d.0481 = phi i64 [ %d.0495, %cleanup ], [ %or166, %for.inc.for.end_crit_edge ]
  %r_prime.0477 = phi i64 [ %r_prime.0496, %cleanup ], [ %or161, %for.inc.for.end_crit_edge ]
  %24 = ptrtoint ptr %read_error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool172.not = icmp eq i32 %25, 0
  br i1 %tobool172.not, label %do.body181, label %if.then173

if.then173:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  %26 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev59, align 4
  %dev179 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.35, i32 noundef %inc500) #10
  br label %do.body316

do.body181:                                       ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then193)) #7
          to label %do.body199 [label %if.then193], !srcloc !146

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev59, align 4
  %dev195 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug196, ptr noundef %dev195, ptr noundef nonnull @.str.37, i32 noundef %inc500, i64 noundef %r_prime.0477, i64 noundef %d.0481) #7
  br label %do.body199

do.body199:                                       ; preds = %if.then193, %do.body181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then211)) #7
          to label %do.end216 [label %if.then211], !srcloc !146

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev59, align 4
  %dev213 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug197, ptr noundef %dev213, ptr noundef nonnull @.str.38, i32 noundef %inc500) #7
  br label %do.end216

do.end216:                                        ; preds = %if.then211, %do.body199
  tail call fastcc void @ds1wm_write_register(ptr noundef %data, i32 noundef 0, i8 noundef zeroext -3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then229)) #7
          to label %do.end234 [label %if.then229], !srcloc !146

if.then229:                                       ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev59, align 4
  %dev231 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug198, ptr noundef %dev231, ptr noundef nonnull @.str.39, i32 noundef %inc500) #7
  br label %do.end234

do.end234:                                        ; preds = %if.then229, %do.end216
  %call235 = tail call fastcc i32 @ds1wm_reset(ptr noundef %data)
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %r_prime.0477)
  %tobool238.not = icmp sgt i64 %r_prime.0477, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %d.0481)
  %tobool240.not = icmp sgt i64 %d.0481, -1
  %or.cond = select i1 %tobool238.not, i1 true, i1 %tobool240.not
  br i1 %or.cond, label %do.body248, label %do.end244

do.end244:                                        ; preds = %do.end234
  %34 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev59, align 4
  %dev246 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev246, ptr noundef nonnull @.str.41, i32 noundef %inc500) #10
  %inc = add i32 %inc500, 1
  %cmp = icmp ugt i32 %inc, 100
  br i1 %cmp, label %do.end244.do.body4_crit_edge, label %do.end244.if.end22_crit_edge

do.end244.if.end22_crit_edge:                     ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end244.do.body4_crit_edge:                     ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.body248:                                       ; preds = %do.end234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then260)) #7
          to label %do.end265 [label %if.then260], !srcloc !146

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev59, align 4
  %dev262 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug199, ptr noundef %dev262, ptr noundef nonnull @.str.43, i32 noundef %inc500, i64 noundef %r_prime.0477) #7
  br label %do.end265

do.end265:                                        ; preds = %if.then260, %do.body248
  tail call void %slave_found(ptr noundef %master_dev, i64 noundef %r_prime.0477) #7
  %inc266 = add i32 %slaves_found.0.ph501, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then279)) #7
          to label %do.end284 [label %if.then279], !srcloc !146

if.then279:                                       ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev59, align 4
  %dev281 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug200, ptr noundef %dev281, ptr noundef nonnull @.str.44, i32 noundef %inc500) #7
  br label %do.end284

do.end284:                                        ; preds = %if.then279, %do.end265
  %neg = xor i64 %r.0.ph502, -1
  %and285 = and i64 %d.0481, %neg
  %shr.i = lshr i64 %and285, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #7, !range !155
  %add.i = sub nuw nsw i32 64, %40
  br label %fls64.exit

if.end.i:                                         ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = trunc i64 %and285 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %41 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #7, !range !155
  %sub.i6.i = sub nuw nsw i32 32, %41
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i449 = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %sub = add nsw i32 %retval.0.i449, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then299)) #7
          to label %do.end304 [label %if.then299], !srcloc !146

if.then299:                                       ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev59, align 4
  %dev301 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug201, ptr noundef %dev301, ptr noundef nonnull @.str.45, i32 noundef %inc500, i64 noundef %and285, i32 noundef %sub) #7
  br label %do.end304

do.end304:                                        ; preds = %if.then299, %fls64.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i449)
  %cmp305 = icmp eq i32 %retval.0.i449, 0
  br i1 %cmp305, label %do.end304.do.body316_crit_edge, label %if.end308

do.end304.do.body316_crit_edge:                   ; preds = %do.end304
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body316

if.end308:                                        ; preds = %do.end304
  %sh_prom309 = zext i32 %sub to i64
  %shl310 = shl nsw i64 -1, %sh_prom309
  %neg311 = xor i64 %shl310, -1
  %and312 = and i64 %r.0.ph502, %neg311
  %shl313 = shl nuw i32 1, %sub
  %conv314 = sext i32 %shl313 to i64
  %or315 = or i64 %and312, %conv314
  %inc498 = add i32 %inc500, 1
  %cmp499 = icmp ugt i32 %inc498, 100
  br i1 %cmp499, label %if.end308.do.body4_crit_edge, label %if.end308.if.end22.lr.ph_crit_edge

if.end308.if.end22.lr.ph_crit_edge:               ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.lr.ph

if.end308.do.body4_crit_edge:                     ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.body316:                                       ; preds = %do.end304.do.body316_crit_edge, %if.then173, %if.then39, %if.then25
  %slaves_found.1 = phi i32 [ %slaves_found.0.ph501, %if.then39 ], [ %slaves_found.0.ph501, %if.then173 ], [ %slaves_found.0.ph501, %if.then25 ], [ %inc266, %do.end304.do.body316_crit_edge ]
  %ms_discrep_bit.1 = phi i32 [ %ms_discrep_bit.0.ph503, %if.then39 ], [ %ms_discrep_bit.0.ph503, %if.then173 ], [ %ms_discrep_bit.0.ph503, %if.then25 ], [ -1, %do.end304.do.body316_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_search.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_search, %if.then328)) #7
          to label %cleanup334 [label %if.then328], !srcloc !146

if.then328:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev59, align 4
  %dev330 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_search.__UNIQUE_ID_ddebug202, ptr noundef %dev330, ptr noundef nonnull @.str.46, i32 noundef %inc500, i32 noundef %slaves_found.1, i32 noundef %ms_discrep_bit.1) #7
  br label %cleanup334

cleanup334:                                       ; preds = %if.then328, %do.body316, %if.then16, %do.body4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ds1wm_read(ptr nocapture noundef %ds1wm_data, i8 noundef zeroext %write_data) unnamed_addr #2 align 64 {
entry:
  %read_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 12
  %0 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %int_en_reg_none, align 1
  %2 = or i8 %1, 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %read_done) #7
  %3 = getelementptr inbounds i8, ptr %read_done, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 52)
  %5 = ptrtoint ptr %read_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %read_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %read_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #7
  %is_hw_big_endian.i = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 2
  %6 = ptrtoint ptr %is_hw_big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_hw_big_endian.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %bus_shift14.i = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 1
  %8 = ptrtoint ptr %bus_shift14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_shift14.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %9, label %if.then.i.do.body.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb7.i
  ]

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv.i = zext i8 %13 to i32
  br label %do.body.i

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 2
  %16 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #7, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv6.i = zext i16 %16 to i32
  br label %do.body.i

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  %20 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %9, label %if.else.i.do.body.i_crit_edge [
    i32 0, label %sw.bb15.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb27.i
  ]

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb15.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr18.i = getelementptr i8, ptr %22, i32 1
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %conv20.i = zext i8 %23 to i32
  br label %do.body.i

sw.bb21.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr24.i = getelementptr i8, ptr %25, i32 2
  %26 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i) #7, !srcloc !140
  %27 = call i16 @llvm.bswap.i16(i16 %26) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv26.i = zext i16 %27 to i32
  br label %do.body.i

sw.bb27.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ds1wm_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds1wm_data, align 4
  %add.ptr30.i = getelementptr i8, ptr %29, i32 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !142
  %31 = call i32 @llvm.bswap.i32(i32 %30) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb27.i, %sw.bb21.i, %sw.bb15.i, %if.else.i.do.body.i_crit_edge, %sw.bb7.i, %sw.bb1.i, %sw.bb.i, %if.then.i.do.body.i_crit_edge
  %val.0.i = phi i32 [ 0, %if.then.i.do.body.i_crit_edge ], [ %19, %sw.bb7.i ], [ %conv6.i, %sw.bb1.i ], [ %conv.i, %sw.bb.i ], [ 0, %if.else.i.do.body.i_crit_edge ], [ %31, %sw.bb27.i ], [ %conv26.i, %sw.bb21.i ], [ %conv20.i, %sw.bb15.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ds1wm_read, %if.then38.i)) #7
          to label %ds1wm_read_register.exit [label %if.then38.i], !srcloc !146

if.then38.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1wm_read_register.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef %val.0.i) #7
  br label %ds1wm_read_register.exit

ds1wm_read_register.exit:                         ; preds = %if.then38.i, %do.body.i
  %read_complete = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 8
  %34 = ptrtoint ptr %read_complete to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %read_done, ptr %read_complete, align 4
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 3, i8 noundef zeroext %2)
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 1, i8 noundef zeroext %write_data)
  %call2 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %read_done, i32 noundef 500) #7
  %35 = ptrtoint ptr %read_complete to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %read_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %ds1wm_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end:                                           ; preds = %ds1wm_read_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read_byte = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 11
  %38 = ptrtoint ptr %read_byte to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %read_byte, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %.sink = phi i32 [ -110, %do.end ], [ 0, %if.end ]
  %retval.0 = phi i8 [ -1, %do.end ], [ %39, %if.end ]
  %40 = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 10
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %read_done) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1wm_write(ptr nocapture noundef %ds1wm_data, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %write_done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %write_done) #7
  %0 = getelementptr inbounds i8, ptr %write_done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %write_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %write_done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %write_done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #7
  %write_complete = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 9
  %3 = ptrtoint ptr %write_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %write_done, ptr %write_complete, align 4
  %int_en_reg_none = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 12
  %4 = ptrtoint ptr %int_en_reg_none to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_en_reg_none, align 1
  %6 = or i8 %5, 8
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 3, i8 noundef zeroext %6)
  call fastcc void @ds1wm_write_register(ptr noundef %ds1wm_data, i32 noundef 1, i8 noundef zeroext %data)
  %call = call i32 @wait_for_completion_timeout(ptr noundef nonnull %write_done, i32 noundef 500) #7
  %7 = ptrtoint ptr %write_complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %write_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.ds1wm_data, ptr %ds1wm_data, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %write_done) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_remove_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_ds1wm__204_668_ds1wm_init6, !1, !"__initcall__kmod_ds1wm__204_668_ds1wm_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/masters/ds1wm.c", i32 668, i32 1}
!2 = !{ptr @__exitcall_ds1wm_exit, !3, !"__exitcall_ds1wm_exit", i1 false, i1 false}
!3 = !{!"../drivers/w1/masters/ds1wm.c", i32 669, i32 1}
!4 = !{ptr @__UNIQUE_ID_file205, !5, !"__UNIQUE_ID_file205", i1 false, i1 false}
!5 = !{!"../drivers/w1/masters/ds1wm.c", i32 671, i32 1}
!6 = !{ptr @__UNIQUE_ID_license206, !5, !"__UNIQUE_ID_license206", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author207, !8, !"__UNIQUE_ID_author207", i1 false, i1 false}
!8 = !{!"../drivers/w1/masters/ds1wm.c", i32 672, i32 1}
!9 = !{ptr @__UNIQUE_ID_description208, !10, !"__UNIQUE_ID_description208", i1 false, i1 false}
!10 = !{!"../drivers/w1/masters/ds1wm.c", i32 675, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/w1/masters/ds1wm.c", i32 649, i32 11}
!13 = !{ptr @ds1wm_driver, !14, !"ds1wm_driver", i1 false, i1 false}
!14 = !{!"../drivers/w1/masters/ds1wm.c", i32 647, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/w1/masters/ds1wm.c", i32 541, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ds1wm_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ds1wm_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/w1/masters/ds1wm.c", i32 550, i32 3}
!25 = !{ptr @ds1wm_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ds1wm_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/w1/masters/ds1wm.c", i32 583, i32 3}
!29 = !{ptr @ds1wm_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ds1wm_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/w1/masters/ds1wm.c", i32 599, i32 2}
!33 = !{ptr @ds1wm_probe.__UNIQUE_ID_ddebug203, !32, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/w1/masters/ds1wm.c", i32 175, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ds1wm_read_register.__UNIQUE_ID_ddebug187, !35, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/w1/masters/ds1wm.c", i32 318, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ds1wm_up.__UNIQUE_ID_ddebug189, !39, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/w1/masters/ds1wm.c", i32 321, i32 3}
!44 = !{ptr @ds1wm_up._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ds1wm_up._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @freq, !47, !"freq", i1 false, i1 false}
!47 = !{!"../drivers/w1/masters/ds1wm.c", i32 67, i32 3}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/w1/masters/ds1wm.c", i32 236, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ds1wm_reset._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ds1wm_reset._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/w1/masters/ds1wm.c", i32 241, i32 3}
!55 = !{ptr @ds1wm_reset.__UNIQUE_ID_ddebug188, !54, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ds1wm_master, !60, !"ds1wm_master", i1 false, i1 false}
!60 = !{!"../drivers/w1/masters/ds1wm.c", i32 499, i32 29}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/w1/masters/ds1wm.c", i32 289, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ds1wm_read._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ds1wm_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/w1/masters/ds1wm.c", i32 266, i32 3}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ds1wm_write._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ds1wm_write._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/w1/masters/ds1wm.c", i32 382, i32 2}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug190, !72, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/w1/masters/ds1wm.c", i32 386, i32 4}
!77 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug191, !76, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/w1/masters/ds1wm.c", i32 394, i32 4}
!80 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug192, !79, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/w1/masters/ds1wm.c", i32 399, i32 3}
!83 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug193, !82, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/w1/masters/ds1wm.c", i32 402, i32 3}
!86 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug194, !85, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/w1/masters/ds1wm.c", i32 405, i32 3}
!89 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug195, !88, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/w1/masters/ds1wm.c", i32 426, i32 5}
!92 = !{ptr @ds1wm_search._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ds1wm_search._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/w1/masters/ds1wm.c", i32 447, i32 4}
!96 = !{ptr @ds1wm_search._entry.34, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ds1wm_search._entry_ptr.36, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/w1/masters/ds1wm.c", i32 451, i32 3}
!100 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug196, !99, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/w1/masters/ds1wm.c", i32 454, i32 3}
!103 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug197, !102, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/w1/masters/ds1wm.c", i32 457, i32 3}
!106 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug198, !105, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/w1/masters/ds1wm.c", i32 462, i32 4}
!109 = !{ptr @ds1wm_search._entry.40, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ds1wm_search._entry_ptr.42, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/w1/masters/ds1wm.c", i32 468, i32 3}
!113 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug199, !112, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/w1/masters/ds1wm.c", i32 472, i32 3}
!116 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug200, !115, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/w1/masters/ds1wm.c", i32 481, i32 3}
!119 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug201, !118, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/w1/masters/ds1wm.c", i32 492, i32 2}
!122 = !{ptr @ds1wm_search.__UNIQUE_ID_ddebug202, !121, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/w1/masters/ds1wm.c", i32 659, i32 2}
!125 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ds1wm_init._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ds1wm_init._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 4632238}
!139 = !{i64 2152171583}
!140 = !{i64 4631620}
!141 = !{i64 2153013819}
!142 = !{i64 4632458}
!143 = !{i64 2153014141}
!144 = !{i64 2152172195}
!145 = !{i64 2152172807}
!146 = !{i64 2148969535, i64 2148969540, i64 2148969553, i64 2148969597, i64 2148969631, i64 2148969652}
!147 = !{i64 2152173188}
!148 = !{i64 4631843}
!149 = !{i64 2153012904}
!150 = !{i64 4631420}
!151 = !{i64 2153013226}
!152 = !{i64 4632040}
!153 = !{i64 2152173612}
!154 = !{i64 2152174162}
!155 = !{i32 0, i32 33}
