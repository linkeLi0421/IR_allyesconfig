; ModuleID = '/llk/IR_all_yes/drivers/bcma/sprom.c_pt.bc'
source_filename = "../drivers/bcma/sprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@get_fallback_sprom = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bcma_sprom_get.sprom_sizes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 220, i32 230, i32 234], [20 x i8] zeroinitializer }, align 32
@bcma_sprom_get.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bcma\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcma_sprom_get\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/bcma/sprom.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bus%d: SPROM offset 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@bcma_sprom_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"bus%d: Invalid SPROM read from the PCIe card, trying to use fallback SPROM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_sprom_get._entry_ptr = internal global ptr @bcma_sprom_get._entry, section ".printk_index", align 4
@bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcma_fill_sprom_with_fallback\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bus%d: Using SPROM revision %d provided by platform.\0A\00", [42 x i8] zeroinitializer }, align 32
@bcma_fill_sprom_with_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 67, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bus%d: Using fallback SPROM failed (err %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@bcma_fill_sprom_with_fallback._entry_ptr = internal global ptr @bcma_fill_sprom_with_fallback._entry, section ".printk_index", align 4
@bcma_sprom_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bcma: Unsupported SPROM revision: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcma_sprom_valid\00", [47 x i8] zeroinitializer }, align 32
@bcma_sprom_valid._entry_ptr = internal global ptr @bcma_sprom_valid._entry, section ".printk_index", align 4
@bcma_sprom_valid.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bus%d: Found SPROM revision %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bcma_crc8.t = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F7\B9N%\D2\9CkJ\BD\F3\04o\98\D6!\94c-\DA\B1F\08\FF\DE)g\90\FB\0CB\B5\7F\88\C61Z\AD\E3\145\C2\8C{\10\E7\A9^\EB\1CR\A5\CE9w\80\A1V\18\EF\84s=\CA\FE\09G\B0\DB,b\95\B4C\0D\FA\91f(\DFj\9D\D3$O\B8\F6\01 \D7\99n\05\F2\BCK\81v8\CF\A4S\1D\EA\CB<r\85\EE\19W\A0\15\E2\AC[0\C7\89~_\A8\E6\11z\8D\C34\AB\\\12\E5\8Ey7\C0\E1\16X\AF\C43}\8A?\C8\86q\1A\ED\A3Tu\82\CC;P\A7\E9\1E\D4#m\9A\F1\06H\BF\9Ei'\D0\BBL\02\F5@\B7\F9\0Ee\92\DC+\0A\FD\B3D/\D8\96aU\A2\EC\1Bp\87\C9>\1F\E8\A6Q:\CD\83t\C16x\8F\E4\13]\AA\8B|2\C5\AEY\17\E0*\DD\93d\0F\F8\B6A`\97\D9.E\B2\FC\0B\BEI\07\F0\9Bl\22\D5\F4\03M\BA\D1&h\9F", [64 x i8] zeroinitializer }, align 32
@bcma_sprom_extract_r8.pwr_info_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 192, i16 224, i16 256, i16 288], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 17171, i64 17201]
@__sancov_gen_cov_switch_values.13 = internal global [12 x i64] [i64 10, i64 16, i64 17171, i64 17201, i64 43131, i64 43142, i64 43217, i64 43224, i64 43225, i64 43227, i64 43228, i64 43428]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 17201, i64 43431]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 17201, i64 43431]
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"get_fallback_sprom\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 19, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"sprom_sizes\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 581, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 619, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 640, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 63, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 67, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 169, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 90, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"pwr_info_offset\00", align 1
@___asan_gen_.74 = private constant [24 x i8] c"../drivers/bcma/sprom.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 225, i32 19 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @bcma_fill_sprom_with_fallback._entry, ptr @bcma_fill_sprom_with_fallback._entry_ptr, ptr @bcma_sprom_get._entry, ptr @bcma_sprom_get._entry_ptr, ptr @bcma_sprom_valid._entry, ptr @bcma_sprom_valid._entry_ptr, ptr @get_fallback_sprom, ptr @bcma_sprom_get.sprom_sizes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @bcma_crc8.t, ptr @bcma_sprom_extract_r8.pwr_info_offset], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fallback_sprom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sprom_get.sprom_sizes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sprom_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_fill_sprom_with_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sprom_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_crc8.t to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_sprom_extract_r8.pwr_info_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bcma_arch_register_fallback_sprom(ptr noundef %sprom_callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @get_fallback_sprom, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %sprom_callback, ptr @get_fallback_sprom, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -17, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_sprom_get(ptr noundef %bus) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end:                                           ; preds = %entry
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %3)
  %cmp.i = icmp ugt i8 %3, 30
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %capabilities.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.then1_crit_edge, label %if.end.i

if.then.i.if.then1_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef nonnull %1, i16 noundef zeroext 400) #6
  %and6.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.i.not = icmp eq i32 %and6.i, 0
  br i1 %tobool7.i.not, label %if.end.i.if.then1_crit_edge, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end.i.if.then1_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.end8.i:                                        ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %ops.i23.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i23.i, align 4
  %read32.i24.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i24.i, align 4
  %call.i25.i = tail call i32 %17(ptr noundef nonnull %1, i16 noundef zeroext 44) #6
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %18 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chipinfo.i, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %if.end8.i.if.end13_crit_edge [
    i16 17171, label %if.end8.i.bcma_sprom_ext_available.exit_crit_edge
    i16 17201, label %sw.bb14.i
  ]

if.end8.i.bcma_sprom_ext_available.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_ext_available.exit

if.end8.i.if.end13_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

sw.bb14.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_ext_available.exit

bcma_sprom_ext_available.exit:                    ; preds = %sw.bb14.i, %if.end8.i.bcma_sprom_ext_available.exit_crit_edge
  %present_mask.0.i = phi i32 [ 2, %sw.bb14.i ], [ 1, %if.end8.i.bcma_sprom_ext_available.exit_crit_edge ]
  %and15.i = and i32 %present_mask.0.i, %call.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.i.not = icmp eq i32 %and15.i, 0
  br i1 %tobool16.i.not, label %bcma_sprom_ext_available.exit.if.then1_crit_edge, label %bcma_sprom_ext_available.exit.if.end13_crit_edge

bcma_sprom_ext_available.exit.if.end13_crit_edge: ; preds = %bcma_sprom_ext_available.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

bcma_sprom_ext_available.exit.if.then1_crit_edge: ; preds = %bcma_sprom_ext_available.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1

if.then1:                                         ; preds = %bcma_sprom_ext_available.exit.if.then1_crit_edge, %if.end.i.if.then1_crit_edge, %if.then.i.if.then1_crit_edge
  %21 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_cc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %ops.i.i115 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i.i115 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i115, align 4
  %read32.i.i116 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %read32.i.i116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read32.i.i116, align 4
  %call.i.i117 = tail call i32 %28(ptr noundef %22, i16 noundef zeroext 44) #6
  %chipinfo.i118 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %29 = ptrtoint ptr %chipinfo.i118 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %chipinfo.i118, align 4
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %30, label %if.then1.if.then9_crit_edge [
    i16 17171, label %sw.epilog.i121
    i16 17201, label %sw.bb1.i
    i16 -22394, label %if.then1.bcma_sprom_onchip_available.exit_crit_edge
    i16 -22312, label %if.then1.bcma_sprom_onchip_available.exit_crit_edge206
    i16 -22311, label %if.then1.bcma_sprom_onchip_available.exit_crit_edge207
    i16 -22405, label %if.then1.sw.bb6.i_crit_edge
    i16 -22319, label %if.then1.sw.bb6.i_crit_edge208
    i16 -22309, label %if.then1.sw.bb6.i_crit_edge209
    i16 -22308, label %if.then1.sw.bb6.i_crit_edge210
    i16 -22108, label %if.then1.sw.bb6.i_crit_edge211
  ]

if.then1.sw.bb6.i_crit_edge211:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then1.sw.bb6.i_crit_edge210:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then1.sw.bb6.i_crit_edge209:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then1.sw.bb6.i_crit_edge208:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then1.sw.bb6.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

if.then1.bcma_sprom_onchip_available.exit_crit_edge207: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

if.then1.bcma_sprom_onchip_available.exit_crit_edge206: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

if.then1.bcma_sprom_onchip_available.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

if.then1.if.then9_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.bb1.i:                                         ; preds = %if.then1
  %and2.i = and i32 %call.i.i117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %sw.bb1.i.if.then9_crit_edge, label %sw.bb1.i.bcma_sprom_onchip_available.exit_crit_edge

sw.bb1.i.bcma_sprom_onchip_available.exit_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

sw.bb1.i.if.then9_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.bb6.i:                                         ; preds = %if.then1.sw.bb6.i_crit_edge, %if.then1.sw.bb6.i_crit_edge208, %if.then1.sw.bb6.i_crit_edge209, %if.then1.sw.bb6.i_crit_edge210, %if.then1.sw.bb6.i_crit_edge211
  %32 = and i32 %call.i.i117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %extract.t.not.i = icmp eq i32 %32, 0
  br i1 %extract.t.not.i, label %sw.bb6.i.if.then9_crit_edge, label %sw.bb6.i.bcma_sprom_onchip_available.exit_crit_edge

sw.bb6.i.bcma_sprom_onchip_available.exit_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

sw.bb6.i.if.then9_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.epilog.i121:                                   ; preds = %if.then1
  %and.i119 = and i32 %call.i.i117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %sw.epilog.i121.if.then9_crit_edge, label %sw.epilog.i121.bcma_sprom_onchip_available.exit_crit_edge

sw.epilog.i121.bcma_sprom_onchip_available.exit_crit_edge: ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_onchip_available.exit

sw.epilog.i121.if.then9_crit_edge:                ; preds = %sw.epilog.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

bcma_sprom_onchip_available.exit:                 ; preds = %sw.epilog.i121.bcma_sprom_onchip_available.exit_crit_edge, %sw.bb6.i.bcma_sprom_onchip_available.exit_crit_edge, %sw.bb1.i.bcma_sprom_onchip_available.exit_crit_edge, %if.then1.bcma_sprom_onchip_available.exit_crit_edge, %if.then1.bcma_sprom_onchip_available.exit_crit_edge206, %if.then1.bcma_sprom_onchip_available.exit_crit_edge207
  %capabilities.i122 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %capabilities.i122 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %capabilities.i122, align 4
  %and12.i = and i32 %34, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %phi.cmp.i.not = icmp eq i32 %and12.i, 0
  br i1 %phi.cmp.i.not, label %bcma_sprom_onchip_available.exit.if.then9_crit_edge, label %if.then4

bcma_sprom_onchip_available.exit.if.then9_crit_edge: ; preds = %bcma_sprom_onchip_available.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then4:                                         ; preds = %bcma_sprom_onchip_available.exit
  %35 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drv_cc, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %ops.i.i126 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i.i126 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i126, align 4
  %read32.i.i127 = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %read32.i.i127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i.i127, align 4
  %call.i.i128 = tail call i32 %42(ptr noundef %36, i16 noundef zeroext 16) #6
  %and.i129 = and i32 %call.i.i128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %cmp.i130 = icmp eq i32 %and.i129, 0
  br i1 %cmp.i130, label %if.then4.if.then9_crit_edge, label %if.end6

if.then4.if.then9_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end6:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 8
  %ops.i5.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i5.i, align 4
  %read32.i6.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read32.i6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i6.i, align 4
  %call.i7.i = tail call i32 %48(ptr noundef %36, i16 noundef zeroext 28) #6
  %49 = trunc i32 %call.i7.i to i16
  %50 = lshr i16 %49, 3
  %51 = and i16 %50, 511
  %conv = or i16 %51, 2048
  br label %if.end13

if.then9:                                         ; preds = %if.then4.if.then9_crit_edge, %bcma_sprom_onchip_available.exit.if.then9_crit_edge, %sw.epilog.i121.if.then9_crit_edge, %sw.bb6.i.if.then9_crit_edge, %sw.bb1.i.if.then9_crit_edge, %if.then1.if.then9_crit_edge
  %sprom10 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18
  %52 = load ptr, ptr @get_fallback_sprom, align 4
  %tobool.not.i134 = icmp eq ptr %52, null
  br i1 %tobool.not.i134, label %if.then9.do.end14.i_crit_edge, label %if.end.i135

if.then9.do.end14.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

if.end.i135:                                      ; preds = %if.then9
  %call.i = tail call i32 %52(ptr noundef %bus, ptr noundef %sprom10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.body.i, label %if.end.i135.do.end14.i_crit_edge

if.end.i135.do.end14.i_crit_edge:                 ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.body.i:                                        ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_sprom_get, %cleanup73)) #6
          to label %if.then9.i [label %cleanup73], !srcloc !45

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %55 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %sprom10 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sprom10, align 4
  %conv10.i = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236, ptr noundef %54, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv10.i) #6
  br label %cleanup73

do.end14.i:                                       ; preds = %if.end.i135.do.end14.i_crit_edge, %if.then9.do.end14.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end.i135.do.end14.i_crit_edge ], [ -2, %if.then9.do.end14.i_crit_edge ]
  %59 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus, align 4
  %num16.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %61 = ptrtoint ptr %num16.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num16.i, align 1
  %conv17.i = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.9, i32 noundef %conv17.i, i32 noundef %err.0.i) #9
  br label %cleanup73

if.end13:                                         ; preds = %if.end6, %bcma_sprom_ext_available.exit.if.end13_crit_edge, %if.end8.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %offset.1 = phi i16 [ 2048, %bcma_sprom_ext_available.exit.if.end13_crit_edge ], [ 2048, %if.end.i.if.end13_crit_edge ], [ 2048, %if.end8.i.if.end13_crit_edge ], [ %conv, %if.end6 ]
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %63 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %chipinfo, align 4
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %64, label %if.end13.do.body_crit_edge [
    i16 17201, label %if.end13.if.then22_crit_edge
    i16 -22105, label %if.end13.if.then22_crit_edge212
  ]

if.end13.if.then22_crit_edge212:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end13.if.then22_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22:                                        ; preds = %if.end13.if.then22_crit_edge, %if.end13.if.then22_crit_edge212
  tail call void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef %drv_cc, i1 noundef zeroext false) #6
  br label %do.body

do.body:                                          ; preds = %if.then22, %if.end13.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_sprom_get.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_sprom_get, %for.body)) #6
          to label %if.then31 [label %for.body], !srcloc !45

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %68 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num, align 1
  %conv32 = zext i8 %69 to i32
  %conv33 = zext i16 %offset.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_sprom_get.__UNIQUE_ID_ddebug239, ptr noundef %67, ptr noundef nonnull @.str.3, i32 noundef %conv32, i32 noundef %conv33) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then31, %do.body
  %i.0205 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then31 ]
  %arrayidx = getelementptr [3 x i32], ptr @bcma_sprom_get.sprom_sizes, i32 0, i32 %i.0205
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 2) #6
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %for.body.cleanup73_crit_edge, label %if.end7.i.i, !prof !46

for.body.cleanup73_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end7.i.i:                                      ; preds = %for.body
  %74 = extractvalue { i32, i1 } %72, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #10
  %tobool38.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool38.not, label %if.end7.i.i.cleanup73_crit_edge, label %if.end7.i.i.for.body.i_crit_edge

if.end7.i.i.for.body.i_crit_edge:                 ; preds = %if.end7.i.i
  br label %for.body.i

if.end7.i.i.cleanup73_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.for.body.i_crit_edge ]
  %75 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %drv_cc, align 4
  %i.0.tr.i = trunc i32 %i.07.i to i16
  %77 = shl i16 %i.0.tr.i, 1
  %conv1.i = add i16 %77, %offset.1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %76, align 8
  %ops.i.i138 = getelementptr inbounds %struct.bcma_bus, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %ops.i.i138 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i138, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read16.i.i, align 4
  %call.i.i139 = tail call zeroext i16 %83(ptr noundef %76, i16 noundef zeroext %conv1.i) #6
  %arrayidx.i = getelementptr i16, ptr %call8.i.i, i32 %i.07.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %call.i.i139, ptr %arrayidx.i, align 2
  %inc.i = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %bcma_sprom_read.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

bcma_sprom_read.exit:                             ; preds = %for.body.i
  %call41 = tail call fastcc i32 @bcma_sprom_valid(ptr noundef %bus, ptr noundef nonnull %call8.i.i, i32 noundef %71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %bcma_sprom_read.exit.for.end_crit_edge, label %for.inc

bcma_sprom_read.exit.for.end_crit_edge:           ; preds = %bcma_sprom_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %bcma_sprom_read.exit
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bcma_sprom_read.exit.for.end_crit_edge
  %85 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %chipinfo, align 4
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %86, label %for.end.if.end61_crit_edge [
    i16 17201, label %for.end.if.then59_crit_edge
    i16 -22105, label %for.end.if.then59_crit_edge213
  ]

for.end.if.then59_crit_edge213:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

for.end.if.then59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %for.end.if.then59_crit_edge, %for.end.if.then59_crit_edge213
  tail call void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef %drv_cc, i1 noundef zeroext true) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.end.if.end61_crit_edge
  br i1 %tobool42.not, label %if.else, label %do.end66

do.end66:                                         ; preds = %if.end61
  %88 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus, align 4
  %num68 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %90 = ptrtoint ptr %num68 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num68, align 1
  %conv69 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.4, i32 noundef %conv69) #9
  %sprom70 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18
  %92 = load ptr, ptr @get_fallback_sprom, align 4
  %tobool.not.i140 = icmp eq ptr %92, null
  br i1 %tobool.not.i140, label %do.end66.do.end14.i153_crit_edge, label %if.end.i143

do.end66.do.end14.i153_crit_edge:                 ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i153

if.end.i143:                                      ; preds = %do.end66
  %call.i141 = tail call i32 %92(ptr noundef %bus, ptr noundef %sprom70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool1.not.i142 = icmp eq i32 %call.i141, 0
  br i1 %tobool1.not.i142, label %do.body.i144, label %if.end.i143.do.end14.i153_crit_edge

if.end.i143.do.end14.i153_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i153

do.body.i144:                                     ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_sprom_get, %cleanup73)) #6
          to label %if.then9.i149 [label %cleanup73], !srcloc !45

if.then9.i149:                                    ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bus, align 4
  %95 = ptrtoint ptr %num68 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num68, align 1
  %conv.i146 = zext i8 %96 to i32
  %97 = ptrtoint ptr %sprom70 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %sprom70, align 4
  %conv10.i148 = zext i8 %98 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236, ptr noundef %94, ptr noundef nonnull @.str.8, i32 noundef %conv.i146, i32 noundef %conv10.i148) #6
  br label %cleanup73

do.end14.i153:                                    ; preds = %if.end.i143.do.end14.i153_crit_edge, %do.end66.do.end14.i153_crit_edge
  %err.0.i150 = phi i32 [ %call.i141, %if.end.i143.do.end14.i153_crit_edge ], [ -2, %do.end66.do.end14.i153_crit_edge ]
  %99 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus, align 4
  %101 = ptrtoint ptr %num68 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num68, align 1
  %conv17.i152 = zext i8 %102 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.9, i32 noundef %conv17.i152, i32 noundef %err.0.i150) #9
  br label %cleanup73

if.else:                                          ; preds = %if.end61
  %il0mac.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 2
  %arrayidx.i156 = getelementptr i16, ptr %call8.i.i, i32 70
  %103 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i156, align 4
  %105 = ptrtoint ptr %il0mac.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %il0mac.i, align 2
  %arrayidx.1.i = getelementptr i16, ptr %call8.i.i, i32 71
  %106 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.1.i, align 2
  %add.ptr.1.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 2, i32 2
  %108 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %add.ptr.1.i, align 2
  %arrayidx.2.i = getelementptr i16, ptr %call8.i.i, i32 72
  %109 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.2.i, align 16
  %add.ptr.2.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 2, i32 4
  %111 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %add.ptr.2.i, align 2
  %arrayidx2.i = getelementptr i16, ptr %call8.i.i, i32 65
  %112 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx2.i, align 2
  %board_rev.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 13
  %114 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %board_rev.i, align 2
  %arrayidx5.i = getelementptr i16, ptr %call8.i.i, i32 2
  %115 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx5.i, align 4
  %board_type.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 15
  %117 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %board_type.i, align 2
  %arrayidx11.i = getelementptr i16, ptr %call8.i.i, i32 49
  %118 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx11.i, align 2
  %conv15.i = trunc i16 %119 to i8
  %txpid2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 48
  %120 = ptrtoint ptr %txpid2g.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv15.i, ptr %txpid2g.i, align 2
  %121 = lshr i16 %119, 8
  %conv22.i = trunc i16 %121 to i8
  %arrayidx25.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 48, i32 1
  %122 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv22.i, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr i16, ptr %call8.i.i, i32 50
  %123 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx26.i, align 4
  %conv30.i = trunc i16 %124 to i8
  %arrayidx33.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 48, i32 2
  %125 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv30.i, ptr %arrayidx33.i, align 2
  %126 = lshr i16 %124, 8
  %conv38.i = trunc i16 %126 to i8
  %arrayidx41.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 48, i32 3
  %127 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv38.i, ptr %arrayidx41.i, align 1
  %arrayidx42.i = getelementptr i16, ptr %call8.i.i, i32 53
  %128 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx42.i, align 2
  %conv46.i = trunc i16 %129 to i8
  %txpid5gl.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 49
  %130 = ptrtoint ptr %txpid5gl.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv46.i, ptr %txpid5gl.i, align 2
  %131 = lshr i16 %129, 8
  %conv53.i = trunc i16 %131 to i8
  %arrayidx56.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 49, i32 1
  %132 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv53.i, ptr %arrayidx56.i, align 1
  %arrayidx57.i = getelementptr i16, ptr %call8.i.i, i32 54
  %133 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx57.i, align 4
  %conv61.i = trunc i16 %134 to i8
  %arrayidx64.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 49, i32 2
  %135 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv61.i, ptr %arrayidx64.i, align 2
  %136 = lshr i16 %134, 8
  %conv69.i = trunc i16 %136 to i8
  %arrayidx72.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 49, i32 3
  %137 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv69.i, ptr %arrayidx72.i, align 1
  %arrayidx73.i = getelementptr i16, ptr %call8.i.i, i32 51
  %138 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx73.i, align 2
  %conv77.i = trunc i16 %139 to i8
  %txpid5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 50
  %140 = ptrtoint ptr %txpid5g.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv77.i, ptr %txpid5g.i, align 2
  %141 = lshr i16 %139, 8
  %conv84.i = trunc i16 %141 to i8
  %arrayidx87.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 50, i32 1
  %142 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv84.i, ptr %arrayidx87.i, align 1
  %arrayidx88.i = getelementptr i16, ptr %call8.i.i, i32 52
  %143 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx88.i, align 8
  %conv92.i = trunc i16 %144 to i8
  %arrayidx95.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 50, i32 2
  %145 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv92.i, ptr %arrayidx95.i, align 2
  %146 = lshr i16 %144, 8
  %conv100.i = trunc i16 %146 to i8
  %arrayidx103.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 50, i32 3
  %147 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv100.i, ptr %arrayidx103.i, align 1
  %arrayidx104.i = getelementptr i16, ptr %call8.i.i, i32 55
  %148 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx104.i, align 2
  %conv108.i = trunc i16 %149 to i8
  %txpid5gh.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 51
  %150 = ptrtoint ptr %txpid5gh.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv108.i, ptr %txpid5gh.i, align 2
  %151 = lshr i16 %149, 8
  %conv115.i = trunc i16 %151 to i8
  %arrayidx118.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 51, i32 1
  %152 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv115.i, ptr %arrayidx118.i, align 1
  %arrayidx119.i = getelementptr i16, ptr %call8.i.i, i32 56
  %153 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx119.i, align 16
  %conv123.i = trunc i16 %154 to i8
  %arrayidx126.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 51, i32 2
  %155 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv123.i, ptr %arrayidx126.i, align 2
  %156 = lshr i16 %154, 8
  %conv131.i = trunc i16 %156 to i8
  %arrayidx134.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 51, i32 3
  %157 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv131.i, ptr %arrayidx134.i, align 1
  %arrayidx135.i = getelementptr i16, ptr %call8.i.i, i32 66
  %158 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx135.i, align 4
  %boardflags_lo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 70
  %160 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %boardflags_lo.i, align 4
  %arrayidx141.i = getelementptr i16, ptr %call8.i.i, i32 67
  %161 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx141.i, align 2
  %boardflags_hi.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 71
  %163 = ptrtoint ptr %boardflags_hi.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %boardflags_hi.i, align 2
  %arrayidx147.i = getelementptr i16, ptr %call8.i.i, i32 68
  %164 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx147.i, align 8
  %boardflags2_lo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 72
  %166 = ptrtoint ptr %boardflags2_lo.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %boardflags2_lo.i, align 4
  %arrayidx153.i = getelementptr i16, ptr %call8.i.i, i32 69
  %167 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx153.i, align 2
  %boardflags2_hi.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 73
  %169 = ptrtoint ptr %boardflags2_hi.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %boardflags2_hi.i, align 2
  %arrayidx159.i = getelementptr i16, ptr %call8.i.i, i32 73
  %170 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx159.i, align 2
  %172 = lshr i16 %171, 8
  %conv163.i = trunc i16 %172 to i8
  %alpha2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 17
  %173 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv163.i, ptr %alpha2.i, align 1
  %conv170.i = trunc i16 %171 to i8
  %arrayidx173.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 17, i32 1
  %174 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv170.i, ptr %arrayidx173.i, align 1
  br label %for.body177.i

for.body177.i:                                    ; preds = %for.body177.i.for.body177.i_crit_edge, %if.else
  %i.11560.i = phi i32 [ 0, %if.else ], [ %inc396.i, %for.body177.i.for.body177.i_crit_edge ]
  %arrayidx178.i = getelementptr [4 x i16], ptr @bcma_sprom_extract_r8.pwr_info_offset, i32 0, i32 %i.11560.i
  %175 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx178.i, align 2
  %conv179.i = zext i16 %176 to i32
  %div1513.i = lshr i32 %conv179.i, 1
  %arrayidx181.i = getelementptr i16, ptr %call8.i.i, i32 %div1513.i
  %177 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx181.i, align 2
  %179 = lshr i16 %178, 8
  %conv185.i = trunc i16 %179 to i8
  %arrayidx187.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i
  %180 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv185.i, ptr %arrayidx187.i, align 2
  %conv195.i = trunc i16 %178 to i8
  %maxpwr_2g.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 2
  %181 = ptrtoint ptr %maxpwr_2g.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv195.i, ptr %maxpwr_2g.i, align 2
  %add200.i = add nuw nsw i32 %conv179.i, 2
  %div2011514.i = lshr i32 %add200.i, 1
  %arrayidx202.i = getelementptr i16, ptr %call8.i.i, i32 %div2011514.i
  %182 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %arrayidx202.i, align 2
  %pa_2g.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 6
  %184 = ptrtoint ptr %pa_2g.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %pa_2g.i, align 2
  %add212.i = add nuw nsw i32 %conv179.i, 4
  %div2131515.i = lshr i32 %add212.i, 1
  %arrayidx214.i = getelementptr i16, ptr %call8.i.i, i32 %div2131515.i
  %185 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx214.i, align 2
  %arrayidx223.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 6, i32 1
  %187 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %186, ptr %arrayidx223.i, align 2
  %add225.i = add nuw nsw i32 %conv179.i, 6
  %div2261516.i = lshr i32 %add225.i, 1
  %arrayidx227.i = getelementptr i16, ptr %call8.i.i, i32 %div2261516.i
  %188 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx227.i, align 2
  %arrayidx236.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 6, i32 2
  %190 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %arrayidx236.i, align 2
  %add238.i = add nuw nsw i32 %conv179.i, 8
  %div2391517.i = lshr i32 %add238.i, 1
  %arrayidx240.i = getelementptr i16, ptr %call8.i.i, i32 %div2391517.i
  %191 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx240.i, align 2
  %193 = lshr i16 %192, 8
  %conv244.i = trunc i16 %193 to i8
  %itssi_5g.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 1
  %194 = ptrtoint ptr %itssi_5g.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv244.i, ptr %itssi_5g.i, align 1
  %conv255.i = trunc i16 %192 to i8
  %maxpwr_5g.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 4
  %195 = ptrtoint ptr %maxpwr_5g.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv255.i, ptr %maxpwr_5g.i, align 2
  %add260.i = add nuw nsw i32 %conv179.i, 10
  %div2611518.i = lshr i32 %add260.i, 1
  %arrayidx262.i = getelementptr i16, ptr %call8.i.i, i32 %div2611518.i
  %196 = ptrtoint ptr %arrayidx262.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx262.i, align 2
  %conv266.i = trunc i16 %197 to i8
  %maxpwr_5gh.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 5
  %198 = ptrtoint ptr %maxpwr_5gh.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv266.i, ptr %maxpwr_5gh.i, align 1
  %199 = lshr i16 %197, 8
  %conv277.i = trunc i16 %199 to i8
  %maxpwr_5gl.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 3
  %200 = ptrtoint ptr %maxpwr_5gl.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv277.i, ptr %maxpwr_5gl.i, align 1
  %add282.i = add nuw nsw i32 %conv179.i, 18
  %div2831519.i = lshr i32 %add282.i, 1
  %arrayidx284.i = getelementptr i16, ptr %call8.i.i, i32 %div2831519.i
  %201 = ptrtoint ptr %arrayidx284.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx284.i, align 2
  %pa_5gl.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 7
  %203 = ptrtoint ptr %pa_5gl.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %pa_5gl.i, align 2
  %add294.i = add nuw nsw i32 %conv179.i, 20
  %div2951520.i = lshr i32 %add294.i, 1
  %arrayidx296.i = getelementptr i16, ptr %call8.i.i, i32 %div2951520.i
  %204 = ptrtoint ptr %arrayidx296.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %arrayidx296.i, align 2
  %arrayidx305.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 7, i32 1
  %206 = ptrtoint ptr %arrayidx305.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %arrayidx305.i, align 2
  %add307.i = add nuw nsw i32 %conv179.i, 22
  %div3081521.i = lshr i32 %add307.i, 1
  %arrayidx309.i = getelementptr i16, ptr %call8.i.i, i32 %div3081521.i
  %207 = ptrtoint ptr %arrayidx309.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx309.i, align 2
  %arrayidx318.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 7, i32 2
  %209 = ptrtoint ptr %arrayidx318.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %208, ptr %arrayidx318.i, align 2
  %add320.i = add nuw nsw i32 %conv179.i, 12
  %div3211522.i = lshr i32 %add320.i, 1
  %arrayidx322.i = getelementptr i16, ptr %call8.i.i, i32 %div3211522.i
  %210 = ptrtoint ptr %arrayidx322.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx322.i, align 2
  %pa_5g.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 8
  %212 = ptrtoint ptr %pa_5g.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %pa_5g.i, align 2
  %add332.i = add nuw nsw i32 %conv179.i, 14
  %div3331523.i = lshr i32 %add332.i, 1
  %arrayidx334.i = getelementptr i16, ptr %call8.i.i, i32 %div3331523.i
  %213 = ptrtoint ptr %arrayidx334.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx334.i, align 2
  %arrayidx343.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 8, i32 1
  %215 = ptrtoint ptr %arrayidx343.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %arrayidx343.i, align 2
  %add345.i = add nuw nsw i32 %conv179.i, 16
  %div3461524.i = lshr i32 %add345.i, 1
  %arrayidx347.i = getelementptr i16, ptr %call8.i.i, i32 %div3461524.i
  %216 = ptrtoint ptr %arrayidx347.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx347.i, align 2
  %arrayidx356.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 8, i32 2
  %218 = ptrtoint ptr %arrayidx356.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %arrayidx356.i, align 2
  %add358.i = add nuw nsw i32 %conv179.i, 24
  %div3591525.i = lshr i32 %add358.i, 1
  %arrayidx360.i = getelementptr i16, ptr %call8.i.i, i32 %div3591525.i
  %219 = ptrtoint ptr %arrayidx360.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx360.i, align 2
  %pa_5gh.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 9
  %221 = ptrtoint ptr %pa_5gh.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %pa_5gh.i, align 2
  %add370.i = add nuw nsw i32 %conv179.i, 26
  %div3711526.i = lshr i32 %add370.i, 1
  %arrayidx372.i = getelementptr i16, ptr %call8.i.i, i32 %div3711526.i
  %222 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx372.i, align 2
  %arrayidx381.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 9, i32 1
  %224 = ptrtoint ptr %arrayidx381.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %223, ptr %arrayidx381.i, align 2
  %add383.i = add nuw nsw i32 %conv179.i, 28
  %div3841527.i = lshr i32 %add383.i, 1
  %arrayidx385.i = getelementptr i16, ptr %call8.i.i, i32 %div3841527.i
  %225 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx385.i, align 2
  %arrayidx394.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 74, i32 %i.11560.i, i32 9, i32 2
  %227 = ptrtoint ptr %arrayidx394.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %arrayidx394.i, align 2
  %inc396.i = add nuw nsw i32 %i.11560.i, 1
  %exitcond.not.i157 = icmp eq i32 %inc396.i, 4
  br i1 %exitcond.not.i157, label %bcma_sprom_extract_r8.exit, label %for.body177.i.for.body177.i_crit_edge

for.body177.i.for.body177.i_crit_edge:            ; preds = %for.body177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body177.i

bcma_sprom_extract_r8.exit:                       ; preds = %for.body177.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx398.i = getelementptr i16, ptr %call8.i.i, i32 87
  %228 = ptrtoint ptr %arrayidx398.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx398.i, align 2
  %230 = trunc i16 %229 to i8
  %conv402.i = and i8 %230, 1
  %fem.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76
  %231 = ptrtoint ptr %fem.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv402.i, ptr %fem.i, align 4
  %232 = trunc i16 %229 to i8
  %233 = lshr i8 %232, 1
  %conv408.i = and i8 %233, 3
  %extpa_gain.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 0, i32 1
  %234 = ptrtoint ptr %extpa_gain.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv408.i, ptr %extpa_gain.i, align 1
  %235 = load i16, ptr %arrayidx398.i, align 2
  %236 = trunc i16 %235 to i8
  %237 = lshr i8 %236, 3
  %pdet_range.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 0, i32 2
  %238 = ptrtoint ptr %pdet_range.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %pdet_range.i, align 2
  %239 = lshr i16 %235, 8
  %240 = trunc i16 %239 to i8
  %conv424.i = and i8 %240, 7
  %tr_iso.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 0, i32 3
  %241 = ptrtoint ptr %tr_iso.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv424.i, ptr %tr_iso.i, align 1
  %242 = load i16, ptr %arrayidx398.i, align 2
  %243 = lshr i16 %242, 11
  %conv432.i = trunc i16 %243 to i8
  %antswlut.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 0, i32 4
  %244 = ptrtoint ptr %antswlut.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv432.i, ptr %antswlut.i, align 4
  %arrayidx436.i = getelementptr i16, ptr %call8.i.i, i32 88
  %245 = ptrtoint ptr %arrayidx436.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx436.i, align 16
  %247 = trunc i16 %246 to i8
  %conv440.i = and i8 %247, 1
  %ghz5.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 1
  %248 = ptrtoint ptr %ghz5.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv440.i, ptr %ghz5.i, align 1
  %249 = trunc i16 %246 to i8
  %250 = lshr i8 %249, 1
  %conv448.i = and i8 %250, 3
  %extpa_gain452.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 1, i32 1
  %251 = ptrtoint ptr %extpa_gain452.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv448.i, ptr %extpa_gain452.i, align 1
  %252 = load i16, ptr %arrayidx436.i, align 16
  %253 = trunc i16 %252 to i8
  %254 = lshr i8 %253, 3
  %pdet_range461.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 1, i32 2
  %255 = ptrtoint ptr %pdet_range461.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %pdet_range461.i, align 1
  %256 = lshr i16 %252, 8
  %257 = trunc i16 %256 to i8
  %conv466.i = and i8 %257, 7
  %tr_iso470.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 1, i32 3
  %258 = ptrtoint ptr %tr_iso470.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv466.i, ptr %tr_iso470.i, align 1
  %259 = load i16, ptr %arrayidx436.i, align 16
  %260 = lshr i16 %259, 11
  %conv475.i = trunc i16 %260 to i8
  %antswlut479.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 76, i32 1, i32 4
  %261 = ptrtoint ptr %antswlut479.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv475.i, ptr %antswlut479.i, align 1
  %arrayidx480.i = getelementptr i16, ptr %call8.i.i, i32 78
  %262 = ptrtoint ptr %arrayidx480.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx480.i, align 4
  %264 = lshr i16 %263, 8
  %conv484.i = trunc i16 %264 to i8
  %ant_available_a.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 20
  %265 = ptrtoint ptr %ant_available_a.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv484.i, ptr %ant_available_a.i, align 1
  %conv490.i = trunc i16 %263 to i8
  %ant_available_bg.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 21
  %266 = ptrtoint ptr %ant_available_bg.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %conv490.i, ptr %ant_available_bg.i, align 2
  %arrayidx492.i = getelementptr i16, ptr %call8.i.i, i32 96
  %267 = ptrtoint ptr %arrayidx492.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %arrayidx492.i, align 64
  %conv496.i = trunc i16 %268 to i8
  %maxpwr_bg.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 38
  %269 = ptrtoint ptr %maxpwr_bg.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %conv496.i, ptr %maxpwr_bg.i, align 4
  %270 = lshr i16 %268, 8
  %conv502.i = trunc i16 %270 to i8
  %itssi_bg.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 43
  %271 = ptrtoint ptr %itssi_bg.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv502.i, ptr %itssi_bg.i, align 1
  %arrayidx504.i = getelementptr i16, ptr %call8.i.i, i32 100
  %272 = ptrtoint ptr %arrayidx504.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %arrayidx504.i, align 8
  %conv508.i = trunc i16 %273 to i8
  %maxpwr_a.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 40
  %274 = ptrtoint ptr %maxpwr_a.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv508.i, ptr %maxpwr_a.i, align 2
  %275 = lshr i16 %273, 8
  %conv514.i = trunc i16 %275 to i8
  %itssi_a.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 42
  %276 = ptrtoint ptr %itssi_a.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv514.i, ptr %itssi_a.i, align 4
  %arrayidx516.i = getelementptr i16, ptr %call8.i.i, i32 101
  %277 = ptrtoint ptr %arrayidx516.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx516.i, align 2
  %conv520.i = trunc i16 %278 to i8
  %maxpwr_ah.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 41
  %279 = ptrtoint ptr %maxpwr_ah.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %conv520.i, ptr %maxpwr_ah.i, align 1
  %280 = lshr i16 %278, 8
  %conv526.i = trunc i16 %280 to i8
  %maxpwr_al.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 39
  %281 = ptrtoint ptr %maxpwr_al.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 %conv526.i, ptr %maxpwr_al.i, align 1
  %arrayidx528.i = getelementptr i16, ptr %call8.i.i, i32 75
  %282 = ptrtoint ptr %arrayidx528.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %arrayidx528.i, align 2
  %conv532.i = trunc i16 %283 to i8
  %gpio0.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 34
  %284 = ptrtoint ptr %gpio0.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %conv532.i, ptr %gpio0.i, align 4
  %285 = lshr i16 %283, 8
  %conv538.i = trunc i16 %285 to i8
  %gpio1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 35
  %286 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %conv538.i, ptr %gpio1.i, align 1
  %arrayidx540.i = getelementptr i16, ptr %call8.i.i, i32 76
  %287 = ptrtoint ptr %arrayidx540.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %arrayidx540.i, align 8
  %conv544.i = trunc i16 %288 to i8
  %gpio2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 36
  %289 = ptrtoint ptr %gpio2.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %conv544.i, ptr %gpio2.i, align 2
  %290 = lshr i16 %288, 8
  %conv550.i = trunc i16 %290 to i8
  %gpio3.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 37
  %291 = ptrtoint ptr %gpio3.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %conv550.i, ptr %gpio3.i, align 1
  %arrayidx552.i = getelementptr i16, ptr %call8.i.i, i32 84
  %292 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx552.i, align 8
  %conv556.i = trunc i16 %293 to i8
  %tri2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 44
  %294 = ptrtoint ptr %tri2g.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv556.i, ptr %tri2g.i, align 2
  %295 = lshr i16 %293, 8
  %conv562.i = trunc i16 %295 to i8
  %tri5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 46
  %296 = ptrtoint ptr %tri5g.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv562.i, ptr %tri5g.i, align 4
  %arrayidx564.i = getelementptr i16, ptr %call8.i.i, i32 85
  %297 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %arrayidx564.i, align 2
  %conv568.i = trunc i16 %298 to i8
  %tri5gl.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 45
  %299 = ptrtoint ptr %tri5gl.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv568.i, ptr %tri5gl.i, align 1
  %300 = lshr i16 %298, 8
  %conv574.i = trunc i16 %300 to i8
  %tri5gh.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 47
  %301 = ptrtoint ptr %tri5gh.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv574.i, ptr %tri5gh.i, align 1
  %arrayidx576.i = getelementptr i16, ptr %call8.i.i, i32 86
  %302 = ptrtoint ptr %arrayidx576.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %arrayidx576.i, align 4
  %conv580.i = trunc i16 %303 to i8
  %rxpo2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 52
  %304 = ptrtoint ptr %rxpo2g.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv580.i, ptr %rxpo2g.i, align 2
  %305 = lshr i16 %303, 8
  %conv586.i = trunc i16 %305 to i8
  %rxpo5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 53
  %306 = ptrtoint ptr %rxpo5g.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %conv586.i, ptr %rxpo5g.i, align 1
  %arrayidx588.i = getelementptr i16, ptr %call8.i.i, i32 82
  %307 = ptrtoint ptr %arrayidx588.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %arrayidx588.i, align 4
  %309 = trunc i16 %308 to i8
  %conv592.i = and i8 %309, 15
  %rssismf2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 56
  %310 = ptrtoint ptr %rssismf2g.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv592.i, ptr %rssismf2g.i, align 2
  %311 = trunc i16 %308 to i8
  %312 = lshr i8 %311, 4
  %rssismc2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 55
  %313 = ptrtoint ptr %rssismc2g.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %rssismc2g.i, align 1
  %314 = load i16, ptr %arrayidx588.i, align 4
  %315 = lshr i16 %314, 8
  %316 = trunc i16 %315 to i8
  %conv604.i = and i8 %316, 7
  %rssisav2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 54
  %317 = ptrtoint ptr %rssisav2g.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv604.i, ptr %rssisav2g.i, align 4
  %318 = lshr i16 %314, 11
  %319 = trunc i16 %318 to i8
  %conv610.i = and i8 %319, 3
  %bxa2g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 57
  %320 = ptrtoint ptr %bxa2g.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %conv610.i, ptr %bxa2g.i, align 1
  %arrayidx612.i = getelementptr i16, ptr %call8.i.i, i32 83
  %321 = ptrtoint ptr %arrayidx612.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %arrayidx612.i, align 2
  %323 = trunc i16 %322 to i8
  %conv616.i = and i8 %323, 15
  %rssismf5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 60
  %324 = ptrtoint ptr %rssismf5g.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %conv616.i, ptr %rssismf5g.i, align 2
  %325 = trunc i16 %322 to i8
  %326 = lshr i8 %325, 4
  %rssismc5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 59
  %327 = ptrtoint ptr %rssismc5g.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %rssismc5g.i, align 1
  %328 = load i16, ptr %arrayidx612.i, align 2
  %329 = lshr i16 %328, 8
  %330 = trunc i16 %329 to i8
  %conv628.i = and i8 %330, 7
  %rssisav5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 58
  %331 = ptrtoint ptr %rssisav5g.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %conv628.i, ptr %rssisav5g.i, align 4
  %332 = lshr i16 %328, 11
  %333 = trunc i16 %332 to i8
  %conv634.i = and i8 %333, 3
  %bxa5g.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 61
  %334 = ptrtoint ptr %bxa5g.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %conv634.i, ptr %bxa5g.i, align 1
  %arrayidx636.i = getelementptr i16, ptr %call8.i.i, i32 97
  %335 = ptrtoint ptr %arrayidx636.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %arrayidx636.i, align 2
  %pa0b0.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 22
  %337 = ptrtoint ptr %pa0b0.i to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 %336, ptr %pa0b0.i, align 4
  %arrayidx642.i = getelementptr i16, ptr %call8.i.i, i32 98
  %338 = ptrtoint ptr %arrayidx642.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %arrayidx642.i, align 4
  %pa0b1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 23
  %340 = ptrtoint ptr %pa0b1.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 %339, ptr %pa0b1.i, align 2
  %arrayidx648.i = getelementptr i16, ptr %call8.i.i, i32 99
  %341 = ptrtoint ptr %arrayidx648.i to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx648.i, align 2
  %pa0b2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 24
  %343 = ptrtoint ptr %pa0b2.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %342, ptr %pa0b2.i, align 4
  %arrayidx654.i = getelementptr i16, ptr %call8.i.i, i32 102
  %344 = ptrtoint ptr %arrayidx654.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx654.i, align 4
  %pa1b0.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 25
  %346 = ptrtoint ptr %pa1b0.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %345, ptr %pa1b0.i, align 2
  %arrayidx660.i = getelementptr i16, ptr %call8.i.i, i32 103
  %347 = ptrtoint ptr %arrayidx660.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %arrayidx660.i, align 2
  %pa1b1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 26
  %349 = ptrtoint ptr %pa1b1.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 %348, ptr %pa1b1.i, align 4
  %arrayidx666.i = getelementptr i16, ptr %call8.i.i, i32 104
  %350 = ptrtoint ptr %arrayidx666.i to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %arrayidx666.i, align 16
  %pa1b2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 27
  %352 = ptrtoint ptr %pa1b2.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %351, ptr %pa1b2.i, align 2
  %arrayidx672.i = getelementptr i16, ptr %call8.i.i, i32 105
  %353 = ptrtoint ptr %arrayidx672.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %arrayidx672.i, align 2
  %pa1lob0.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 28
  %355 = ptrtoint ptr %pa1lob0.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 %354, ptr %pa1lob0.i, align 4
  %arrayidx678.i = getelementptr i16, ptr %call8.i.i, i32 106
  %356 = ptrtoint ptr %arrayidx678.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %arrayidx678.i, align 4
  %pa1lob1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 29
  %358 = ptrtoint ptr %pa1lob1.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %357, ptr %pa1lob1.i, align 2
  %arrayidx684.i = getelementptr i16, ptr %call8.i.i, i32 107
  %359 = ptrtoint ptr %arrayidx684.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %arrayidx684.i, align 2
  %pa1lob2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 30
  %361 = ptrtoint ptr %pa1lob2.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %360, ptr %pa1lob2.i, align 4
  %arrayidx690.i = getelementptr i16, ptr %call8.i.i, i32 108
  %362 = ptrtoint ptr %arrayidx690.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %arrayidx690.i, align 8
  %pa1hib0.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 31
  %364 = ptrtoint ptr %pa1hib0.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %363, ptr %pa1hib0.i, align 2
  %arrayidx696.i = getelementptr i16, ptr %call8.i.i, i32 109
  %365 = ptrtoint ptr %arrayidx696.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %arrayidx696.i, align 2
  %pa1hib1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 32
  %367 = ptrtoint ptr %pa1hib1.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %366, ptr %pa1hib1.i, align 4
  %arrayidx702.i = getelementptr i16, ptr %call8.i.i, i32 110
  %368 = ptrtoint ptr %arrayidx702.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %arrayidx702.i, align 4
  %pa1hib2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 33
  %370 = ptrtoint ptr %pa1hib2.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %369, ptr %pa1hib2.i, align 2
  %arrayidx708.i = getelementptr i16, ptr %call8.i.i, i32 160
  %371 = ptrtoint ptr %arrayidx708.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %arrayidx708.i, align 64
  %cck2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 62
  %373 = ptrtoint ptr %cck2gpo.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 %372, ptr %cck2gpo.i, align 4
  %arrayidx714.i = getelementptr i16, ptr %call8.i.i, i32 162
  %374 = ptrtoint ptr %arrayidx714.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %arrayidx714.i, align 4
  %conv715.i = zext i16 %375 to i32
  %shl.i = shl nuw i32 %conv715.i, 16
  %arrayidx716.i = getelementptr i16, ptr %call8.i.i, i32 161
  %376 = ptrtoint ptr %arrayidx716.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %arrayidx716.i, align 2
  %conv717.i = zext i16 %377 to i32
  %or.i = or i32 %shl.i, %conv717.i
  %ofdm2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 63
  %378 = ptrtoint ptr %ofdm2gpo.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %or.i, ptr %ofdm2gpo.i, align 4
  %arrayidx721.i = getelementptr i16, ptr %call8.i.i, i32 166
  %379 = ptrtoint ptr %arrayidx721.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %arrayidx721.i, align 4
  %conv722.i = zext i16 %380 to i32
  %shl723.i = shl nuw i32 %conv722.i, 16
  %arrayidx724.i = getelementptr i16, ptr %call8.i.i, i32 165
  %381 = ptrtoint ptr %arrayidx724.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %arrayidx724.i, align 2
  %conv725.i = zext i16 %382 to i32
  %or726.i = or i32 %shl723.i, %conv725.i
  %ofdm5glpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 64
  %383 = ptrtoint ptr %ofdm5glpo.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %or726.i, ptr %ofdm5glpo.i, align 4
  %arrayidx730.i = getelementptr i16, ptr %call8.i.i, i32 164
  %384 = ptrtoint ptr %arrayidx730.i to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %arrayidx730.i, align 8
  %conv731.i = zext i16 %385 to i32
  %shl732.i = shl nuw i32 %conv731.i, 16
  %arrayidx733.i = getelementptr i16, ptr %call8.i.i, i32 163
  %386 = ptrtoint ptr %arrayidx733.i to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %arrayidx733.i, align 2
  %conv734.i = zext i16 %387 to i32
  %or735.i = or i32 %shl732.i, %conv734.i
  %ofdm5gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 65
  %388 = ptrtoint ptr %ofdm5gpo.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %or735.i, ptr %ofdm5gpo.i, align 4
  %arrayidx739.i = getelementptr i16, ptr %call8.i.i, i32 168
  %389 = ptrtoint ptr %arrayidx739.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %arrayidx739.i, align 16
  %conv740.i = zext i16 %390 to i32
  %shl741.i = shl nuw i32 %conv740.i, 16
  %arrayidx742.i = getelementptr i16, ptr %call8.i.i, i32 167
  %391 = ptrtoint ptr %arrayidx742.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %arrayidx742.i, align 2
  %conv743.i = zext i16 %392 to i32
  %or744.i = or i32 %shl741.i, %conv743.i
  %ofdm5ghpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 66
  %393 = ptrtoint ptr %ofdm5ghpo.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %or744.i, ptr %ofdm5ghpo.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %call8.i.i, i32 79
  %394 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %arrayidx.i.i, align 2
  %and16.i.i = and i16 %395, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and16.i.i)
  %cmp.i.i = icmp eq i16 %and16.i.i, 255
  %and8.i.i = lshr i16 %and16.i.i, 6
  %and11.i.i = shl nuw nsw i16 %and16.i.i, 2
  %or.i.i = or i16 %and8.i.i, %and11.i.i
  %conv12.i.i = trunc i16 %or.i.i to i8
  %gain.0.i.i = select i1 %cmp.i.i, i8 8, i8 %conv12.i.i
  %antenna_gain.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 75
  %396 = ptrtoint ptr %antenna_gain.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %gain.0.i.i, ptr %antenna_gain.i, align 4
  %397 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %arrayidx.i.i, align 2
  %399 = lshr i16 %398, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %399)
  %cmp.i1532.i = icmp eq i16 %399, 255
  %or.i1535.i = tail call i16 @llvm.fshl.i16(i16 %399, i16 %398, i16 2) #6
  %conv12.i1536.i = trunc i16 %or.i1535.i to i8
  %gain.0.i1537.i = select i1 %cmp.i1532.i, i8 8, i8 %conv12.i1536.i
  %a1.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 75, i32 1
  %400 = ptrtoint ptr %a1.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %gain.0.i1537.i, ptr %a1.i, align 1
  %arrayidx.i1538.i = getelementptr i16, ptr %call8.i.i, i32 80
  %401 = ptrtoint ptr %arrayidx.i1538.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %arrayidx.i1538.i, align 32
  %and16.i1539.i = and i16 %402, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and16.i1539.i)
  %cmp.i1542.i = icmp eq i16 %and16.i1539.i, 255
  %and8.i1543.i = lshr i16 %and16.i1539.i, 6
  %and11.i1544.i = shl nuw nsw i16 %and16.i1539.i, 2
  %or.i1545.i = or i16 %and8.i1543.i, %and11.i1544.i
  %conv12.i1546.i = trunc i16 %or.i1545.i to i8
  %gain.0.i1547.i = select i1 %cmp.i1542.i, i8 8, i8 %conv12.i1546.i
  %a2.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 75, i32 2
  %403 = ptrtoint ptr %a2.i to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 %gain.0.i1547.i, ptr %a2.i, align 2
  %404 = ptrtoint ptr %arrayidx.i1538.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %arrayidx.i1538.i, align 32
  %406 = lshr i16 %405, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %406)
  %cmp.i1553.i = icmp eq i16 %406, 255
  %or.i1556.i = tail call i16 @llvm.fshl.i16(i16 %406, i16 %405, i16 2) #6
  %conv12.i1557.i = trunc i16 %or.i1556.i to i8
  %gain.0.i1558.i = select i1 %cmp.i1553.i, i8 8, i8 %conv12.i1557.i
  %a3.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 75, i32 3
  %407 = ptrtoint ptr %a3.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %gain.0.i1558.i, ptr %a3.i, align 1
  %arrayidx758.i = getelementptr i16, ptr %call8.i.i, i32 77
  %408 = ptrtoint ptr %arrayidx758.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %arrayidx758.i, align 2
  %410 = lshr i16 %409, 8
  %conv762.i = trunc i16 %410 to i8
  %leddc_on_time.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 18
  %411 = ptrtoint ptr %leddc_on_time.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %conv762.i, ptr %leddc_on_time.i, align 1
  %conv768.i = trunc i16 %409 to i8
  %leddc_off_time.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 19
  %412 = ptrtoint ptr %leddc_off_time.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %conv768.i, ptr %leddc_off_time.i, align 4
  %arrayidx770.i = getelementptr i16, ptr %call8.i.i, i32 81
  %413 = ptrtoint ptr %arrayidx770.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %arrayidx770.i, align 2
  %415 = trunc i16 %414 to i8
  %conv774.i = and i8 %415, 15
  %txchain.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 93
  %416 = ptrtoint ptr %txchain.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %conv774.i, ptr %txchain.i, align 2
  %417 = trunc i16 %414 to i8
  %418 = lshr i8 %417, 4
  %rxchain.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 94
  %419 = ptrtoint ptr %rxchain.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %418, ptr %rxchain.i, align 1
  %420 = load i16, ptr %arrayidx770.i, align 2
  %421 = lshr i16 %420, 8
  %conv786.i = trunc i16 %421 to i8
  %antswitch.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 95
  %422 = ptrtoint ptr %antswitch.i to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %conv786.i, ptr %antswitch.i, align 4
  %423 = ptrtoint ptr %arrayidx716.i to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %arrayidx716.i, align 2
  %conv792.i = trunc i16 %424 to i8
  %opo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 81
  %425 = ptrtoint ptr %opo.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %conv792.i, ptr %opo.i, align 2
  %arrayidx795.i = getelementptr i16, ptr %call8.i.i, i32 169
  %426 = ptrtoint ptr %arrayidx795.i to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %arrayidx795.i, align 2
  %mcs2gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77
  %428 = ptrtoint ptr %mcs2gpo.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %427, ptr %mcs2gpo.i, align 2
  %arrayidx802.i = getelementptr i16, ptr %call8.i.i, i32 170
  %429 = ptrtoint ptr %arrayidx802.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %arrayidx802.i, align 4
  %arrayidx809.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 1
  %431 = ptrtoint ptr %arrayidx809.i to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %430, ptr %arrayidx809.i, align 2
  %arrayidx810.i = getelementptr i16, ptr %call8.i.i, i32 171
  %432 = ptrtoint ptr %arrayidx810.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %arrayidx810.i, align 2
  %arrayidx817.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 2
  %434 = ptrtoint ptr %arrayidx817.i to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 %433, ptr %arrayidx817.i, align 2
  %arrayidx818.i = getelementptr i16, ptr %call8.i.i, i32 172
  %435 = ptrtoint ptr %arrayidx818.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %arrayidx818.i, align 8
  %arrayidx825.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 3
  %437 = ptrtoint ptr %arrayidx825.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %436, ptr %arrayidx825.i, align 2
  %arrayidx826.i = getelementptr i16, ptr %call8.i.i, i32 173
  %438 = ptrtoint ptr %arrayidx826.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %arrayidx826.i, align 2
  %arrayidx833.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 4
  %440 = ptrtoint ptr %arrayidx833.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 %439, ptr %arrayidx833.i, align 2
  %arrayidx834.i = getelementptr i16, ptr %call8.i.i, i32 174
  %441 = ptrtoint ptr %arrayidx834.i to i32
  call void @__asan_load2_noabort(i32 %441)
  %442 = load i16, ptr %arrayidx834.i, align 4
  %arrayidx841.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 5
  %443 = ptrtoint ptr %arrayidx841.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 %442, ptr %arrayidx841.i, align 2
  %arrayidx842.i = getelementptr i16, ptr %call8.i.i, i32 175
  %444 = ptrtoint ptr %arrayidx842.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %arrayidx842.i, align 2
  %arrayidx849.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 6
  %446 = ptrtoint ptr %arrayidx849.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 %445, ptr %arrayidx849.i, align 2
  %arrayidx850.i = getelementptr i16, ptr %call8.i.i, i32 176
  %447 = ptrtoint ptr %arrayidx850.i to i32
  call void @__asan_load2_noabort(i32 %447)
  %448 = load i16, ptr %arrayidx850.i, align 32
  %arrayidx857.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 77, i32 7
  %449 = ptrtoint ptr %arrayidx857.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %448, ptr %arrayidx857.i, align 2
  %arrayidx861.i = getelementptr i16, ptr %call8.i.i, i32 177
  %450 = ptrtoint ptr %arrayidx861.i to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %arrayidx861.i, align 2
  %mcs5gpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78
  %452 = ptrtoint ptr %mcs5gpo.i to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 %451, ptr %mcs5gpo.i, align 2
  %arrayidx868.i = getelementptr i16, ptr %call8.i.i, i32 178
  %453 = ptrtoint ptr %arrayidx868.i to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %arrayidx868.i, align 4
  %arrayidx875.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 1
  %455 = ptrtoint ptr %arrayidx875.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 %454, ptr %arrayidx875.i, align 2
  %arrayidx876.i = getelementptr i16, ptr %call8.i.i, i32 179
  %456 = ptrtoint ptr %arrayidx876.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %arrayidx876.i, align 2
  %arrayidx883.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 2
  %458 = ptrtoint ptr %arrayidx883.i to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %457, ptr %arrayidx883.i, align 2
  %arrayidx884.i = getelementptr i16, ptr %call8.i.i, i32 180
  %459 = ptrtoint ptr %arrayidx884.i to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %arrayidx884.i, align 8
  %arrayidx891.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 3
  %461 = ptrtoint ptr %arrayidx891.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %460, ptr %arrayidx891.i, align 2
  %arrayidx892.i = getelementptr i16, ptr %call8.i.i, i32 181
  %462 = ptrtoint ptr %arrayidx892.i to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %arrayidx892.i, align 2
  %arrayidx899.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 4
  %464 = ptrtoint ptr %arrayidx899.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %463, ptr %arrayidx899.i, align 2
  %arrayidx900.i = getelementptr i16, ptr %call8.i.i, i32 182
  %465 = ptrtoint ptr %arrayidx900.i to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %arrayidx900.i, align 4
  %arrayidx907.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 5
  %467 = ptrtoint ptr %arrayidx907.i to i32
  call void @__asan_store2_noabort(i32 %467)
  store i16 %466, ptr %arrayidx907.i, align 2
  %arrayidx908.i = getelementptr i16, ptr %call8.i.i, i32 183
  %468 = ptrtoint ptr %arrayidx908.i to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %arrayidx908.i, align 2
  %arrayidx915.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 6
  %470 = ptrtoint ptr %arrayidx915.i to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 %469, ptr %arrayidx915.i, align 2
  %arrayidx916.i = getelementptr i16, ptr %call8.i.i, i32 184
  %471 = ptrtoint ptr %arrayidx916.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %arrayidx916.i, align 16
  %arrayidx923.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 78, i32 7
  %473 = ptrtoint ptr %arrayidx923.i to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %472, ptr %arrayidx923.i, align 2
  %arrayidx927.i = getelementptr i16, ptr %call8.i.i, i32 185
  %474 = ptrtoint ptr %arrayidx927.i to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %arrayidx927.i, align 2
  %mcs5glpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79
  %476 = ptrtoint ptr %mcs5glpo.i to i32
  call void @__asan_store2_noabort(i32 %476)
  store i16 %475, ptr %mcs5glpo.i, align 2
  %arrayidx934.i = getelementptr i16, ptr %call8.i.i, i32 186
  %477 = ptrtoint ptr %arrayidx934.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %arrayidx934.i, align 4
  %arrayidx941.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 1
  %479 = ptrtoint ptr %arrayidx941.i to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 %478, ptr %arrayidx941.i, align 2
  %arrayidx942.i = getelementptr i16, ptr %call8.i.i, i32 187
  %480 = ptrtoint ptr %arrayidx942.i to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %arrayidx942.i, align 2
  %arrayidx949.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 2
  %482 = ptrtoint ptr %arrayidx949.i to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 %481, ptr %arrayidx949.i, align 2
  %arrayidx950.i = getelementptr i16, ptr %call8.i.i, i32 188
  %483 = ptrtoint ptr %arrayidx950.i to i32
  call void @__asan_load2_noabort(i32 %483)
  %484 = load i16, ptr %arrayidx950.i, align 8
  %arrayidx957.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 3
  %485 = ptrtoint ptr %arrayidx957.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 %484, ptr %arrayidx957.i, align 2
  %arrayidx958.i = getelementptr i16, ptr %call8.i.i, i32 189
  %486 = ptrtoint ptr %arrayidx958.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %arrayidx958.i, align 2
  %arrayidx965.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 4
  %488 = ptrtoint ptr %arrayidx965.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %487, ptr %arrayidx965.i, align 2
  %arrayidx966.i = getelementptr i16, ptr %call8.i.i, i32 190
  %489 = ptrtoint ptr %arrayidx966.i to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %arrayidx966.i, align 4
  %arrayidx973.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 5
  %491 = ptrtoint ptr %arrayidx973.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %490, ptr %arrayidx973.i, align 2
  %arrayidx974.i = getelementptr i16, ptr %call8.i.i, i32 191
  %492 = ptrtoint ptr %arrayidx974.i to i32
  call void @__asan_load2_noabort(i32 %492)
  %493 = load i16, ptr %arrayidx974.i, align 2
  %arrayidx981.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 6
  %494 = ptrtoint ptr %arrayidx981.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %493, ptr %arrayidx981.i, align 2
  %arrayidx982.i = getelementptr i16, ptr %call8.i.i, i32 192
  %495 = ptrtoint ptr %arrayidx982.i to i32
  call void @__asan_load2_noabort(i32 %495)
  %496 = load i16, ptr %arrayidx982.i, align 128
  %arrayidx989.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 79, i32 7
  %497 = ptrtoint ptr %arrayidx989.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 %496, ptr %arrayidx989.i, align 2
  %arrayidx993.i = getelementptr i16, ptr %call8.i.i, i32 193
  %498 = ptrtoint ptr %arrayidx993.i to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %arrayidx993.i, align 2
  %mcs5ghpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80
  %500 = ptrtoint ptr %mcs5ghpo.i to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 %499, ptr %mcs5ghpo.i, align 2
  %arrayidx1000.i = getelementptr i16, ptr %call8.i.i, i32 194
  %501 = ptrtoint ptr %arrayidx1000.i to i32
  call void @__asan_load2_noabort(i32 %501)
  %502 = load i16, ptr %arrayidx1000.i, align 4
  %arrayidx1007.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 1
  %503 = ptrtoint ptr %arrayidx1007.i to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 %502, ptr %arrayidx1007.i, align 2
  %arrayidx1008.i = getelementptr i16, ptr %call8.i.i, i32 195
  %504 = ptrtoint ptr %arrayidx1008.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %arrayidx1008.i, align 2
  %arrayidx1015.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 2
  %506 = ptrtoint ptr %arrayidx1015.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %505, ptr %arrayidx1015.i, align 2
  %arrayidx1016.i = getelementptr i16, ptr %call8.i.i, i32 196
  %507 = ptrtoint ptr %arrayidx1016.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %arrayidx1016.i, align 8
  %arrayidx1023.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 3
  %509 = ptrtoint ptr %arrayidx1023.i to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 %508, ptr %arrayidx1023.i, align 2
  %arrayidx1024.i = getelementptr i16, ptr %call8.i.i, i32 197
  %510 = ptrtoint ptr %arrayidx1024.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %arrayidx1024.i, align 2
  %arrayidx1031.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 4
  %512 = ptrtoint ptr %arrayidx1031.i to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 %511, ptr %arrayidx1031.i, align 2
  %arrayidx1032.i = getelementptr i16, ptr %call8.i.i, i32 198
  %513 = ptrtoint ptr %arrayidx1032.i to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %arrayidx1032.i, align 4
  %arrayidx1039.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 5
  %515 = ptrtoint ptr %arrayidx1039.i to i32
  call void @__asan_store2_noabort(i32 %515)
  store i16 %514, ptr %arrayidx1039.i, align 2
  %arrayidx1040.i = getelementptr i16, ptr %call8.i.i, i32 199
  %516 = ptrtoint ptr %arrayidx1040.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %arrayidx1040.i, align 2
  %arrayidx1047.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 6
  %518 = ptrtoint ptr %arrayidx1047.i to i32
  call void @__asan_store2_noabort(i32 %518)
  store i16 %517, ptr %arrayidx1047.i, align 2
  %arrayidx1048.i = getelementptr i16, ptr %call8.i.i, i32 200
  %519 = ptrtoint ptr %arrayidx1048.i to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %arrayidx1048.i, align 16
  %arrayidx1055.i = getelementptr %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 80, i32 7
  %521 = ptrtoint ptr %arrayidx1055.i to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 %520, ptr %arrayidx1055.i, align 2
  %arrayidx1058.i = getelementptr i16, ptr %call8.i.i, i32 90
  %522 = ptrtoint ptr %arrayidx1058.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %arrayidx1058.i, align 4
  %524 = and i16 %523, 511
  %rawtempsense.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 102
  %525 = ptrtoint ptr %rawtempsense.i to i32
  call void @__asan_store2_noabort(i32 %525)
  store i16 %524, ptr %rawtempsense.i, align 4
  %526 = lshr i16 %523, 9
  %conv1068.i = trunc i16 %526 to i8
  %measpower.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 103
  %527 = ptrtoint ptr %measpower.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %conv1068.i, ptr %measpower.i, align 2
  %arrayidx1070.i = getelementptr i16, ptr %call8.i.i, i32 91
  %528 = ptrtoint ptr %arrayidx1070.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %arrayidx1070.i, align 2
  %conv1074.i = trunc i16 %529 to i8
  %tempsense_slope.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 104
  %530 = ptrtoint ptr %tempsense_slope.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %conv1074.i, ptr %tempsense_slope.i, align 1
  %531 = lshr i16 %529, 10
  %conv1080.i = trunc i16 %531 to i8
  %tempcorrx.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 105
  %532 = ptrtoint ptr %tempcorrx.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv1080.i, ptr %tempcorrx.i, align 4
  %533 = load i16, ptr %arrayidx1070.i, align 2
  %534 = lshr i16 %533, 8
  %535 = trunc i16 %534 to i8
  %conv1086.i = and i8 %535, 3
  %tempsense_option.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 106
  %536 = ptrtoint ptr %tempsense_option.i to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %conv1086.i, ptr %tempsense_option.i, align 1
  %arrayidx1088.i = getelementptr i16, ptr %call8.i.i, i32 92
  %537 = ptrtoint ptr %arrayidx1088.i to i32
  call void @__asan_load2_noabort(i32 %537)
  %538 = load i16, ptr %arrayidx1088.i, align 8
  %539 = trunc i16 %538 to i8
  %conv1092.i = and i8 %539, 15
  %freqoffset_corr.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 107
  %540 = ptrtoint ptr %freqoffset_corr.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %conv1092.i, ptr %freqoffset_corr.i, align 2
  %541 = trunc i16 %538 to i8
  %542 = lshr i8 %541, 4
  %conv1098.i = and i8 %542, 1
  %iqcal_swp_dis.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 108
  %543 = ptrtoint ptr %iqcal_swp_dis.i to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 %conv1098.i, ptr %iqcal_swp_dis.i, align 1
  %544 = load i16, ptr %arrayidx1088.i, align 8
  %545 = trunc i16 %544 to i8
  %546 = lshr i8 %545, 5
  %conv1104.i = and i8 %546, 1
  %hw_iqcal_en.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 109
  %547 = ptrtoint ptr %hw_iqcal_en.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 %conv1104.i, ptr %hw_iqcal_en.i, align 4
  %arrayidx1106.i = getelementptr i16, ptr %call8.i.i, i32 203
  %548 = ptrtoint ptr %arrayidx1106.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %arrayidx1106.i, align 2
  %bw40po.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 98
  %550 = ptrtoint ptr %bw40po.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 %549, ptr %bw40po.i, align 2
  %arrayidx1112.i = getelementptr i16, ptr %call8.i.i, i32 201
  %551 = ptrtoint ptr %arrayidx1112.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %arrayidx1112.i, align 2
  %cddpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 96
  %553 = ptrtoint ptr %cddpo.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 %552, ptr %cddpo.i, align 2
  %arrayidx1118.i = getelementptr i16, ptr %call8.i.i, i32 202
  %554 = ptrtoint ptr %arrayidx1118.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %arrayidx1118.i, align 4
  %stbcpo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 97
  %556 = ptrtoint ptr %stbcpo.i to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 %555, ptr %stbcpo.i, align 4
  %arrayidx1124.i = getelementptr i16, ptr %call8.i.i, i32 204
  %557 = ptrtoint ptr %arrayidx1124.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %arrayidx1124.i, align 8
  %bwduppo.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 99
  %559 = ptrtoint ptr %bwduppo.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %558, ptr %bwduppo.i, align 4
  %arrayidx1130.i = getelementptr i16, ptr %call8.i.i, i32 89
  %560 = ptrtoint ptr %arrayidx1130.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %arrayidx1130.i, align 2
  %562 = lshr i16 %561, 8
  %conv1134.i = trunc i16 %562 to i8
  %tempthresh.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 100
  %563 = ptrtoint ptr %tempthresh.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %conv1134.i, ptr %tempthresh.i, align 2
  %conv1140.i = trunc i16 %561 to i8
  %tempoffset.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 101
  %564 = ptrtoint ptr %tempoffset.i to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %conv1140.i, ptr %tempoffset.i, align 1
  %arrayidx1142.i = getelementptr i16, ptr %call8.i.i, i32 94
  %565 = ptrtoint ptr %arrayidx1142.i to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %arrayidx1142.i, align 4
  %conv1146.i = trunc i16 %566 to i8
  %phycal_tempdelta.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 112
  %567 = ptrtoint ptr %phycal_tempdelta.i to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 %conv1146.i, ptr %phycal_tempdelta.i, align 1
  %568 = lshr i16 %566, 8
  %569 = trunc i16 %568 to i8
  %conv1152.i = and i8 %569, 15
  %temps_period.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 113
  %570 = ptrtoint ptr %temps_period.i to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 %conv1152.i, ptr %temps_period.i, align 4
  %571 = load i16, ptr %arrayidx1142.i, align 4
  %572 = lshr i16 %571, 12
  %conv1158.i = trunc i16 %572 to i8
  %temps_hysteresis.i = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18, i32 114
  %573 = ptrtoint ptr %temps_hysteresis.i to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %conv1158.i, ptr %temps_hysteresis.i, align 1
  tail call void @kfree(ptr noundef %call8.i.i) #6
  br label %cleanup73

cleanup73:                                        ; preds = %bcma_sprom_extract_r8.exit, %do.end14.i153, %if.then9.i149, %do.body.i144, %if.end7.i.i.cleanup73_crit_edge, %for.body.cleanup73_crit_edge, %do.end14.i, %if.then9.i, %do.body.i, %entry.cleanup73_crit_edge
  %retval.4 = phi i32 [ -95, %entry.cleanup73_crit_edge ], [ 0, %bcma_sprom_extract_r8.exit ], [ 0, %do.body.i ], [ %err.0.i150, %do.end14.i153 ], [ 0, %if.then9.i149 ], [ 0, %do.body.i144 ], [ 0, %if.then9.i ], [ %err.0.i, %do.end14.i ], [ -12, %if.end7.i.i.cleanup73_crit_edge ], [ -12, %for.body.cleanup73_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcma_sprom_valid(ptr nocapture noundef %bus, ptr nocapture noundef readonly %sprom, i32 noundef %words) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i.i = add i32 %words, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp31.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp31.not.i.i, label %entry.bcma_sprom_check_crc.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.bcma_sprom_check_crc.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_check_crc.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %crc.033.i.i = phi i8 [ %6, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %entry.for.body.i.i_crit_edge ]
  %word.032.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %sprom, i32 %word.032.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i.i, align 2
  %conv1.i.i = trunc i16 %1 to i8
  %xor2.i.i.i = xor i8 %crc.033.i.i, %conv1.i.i
  %xor.i.i.i = zext i8 %xor2.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %xor.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i, align 1
  %4 = lshr i16 %1, 8
  %conv5.i.i = trunc i16 %4 to i8
  %xor2.i25.i.i = xor i8 %3, %conv5.i.i
  %xor.i26.i.i = zext i8 %xor2.i25.i.i to i32
  %arrayidx.i27.i.i = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %xor.i26.i.i
  %5 = ptrtoint ptr %arrayidx.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i27.i.i, align 1
  %inc.i.i = add nuw i32 %word.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.bcma_sprom_check_crc.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.bcma_sprom_check_crc.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcma_sprom_check_crc.exit

bcma_sprom_check_crc.exit:                        ; preds = %for.body.i.i.bcma_sprom_check_crc.exit_crit_edge, %entry.bcma_sprom_check_crc.exit_crit_edge
  %crc.0.lcssa.i.i = phi i8 [ -1, %entry.bcma_sprom_check_crc.exit_crit_edge ], [ %6, %for.body.i.i.bcma_sprom_check_crc.exit_crit_edge ]
  %arrayidx8.i.i = getelementptr i16, ptr %sprom, i32 %sub.i.i
  %7 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx8.i.i, align 2
  %conv11.i.i = trunc i16 %8 to i8
  %xor2.i28.i.i = xor i8 %crc.0.lcssa.i.i, %conv11.i.i
  %xor.i29.i.i = zext i8 %xor2.i28.i.i to i32
  %arrayidx.i30.i.i = getelementptr [256 x i8], ptr @bcma_crc8.t, i32 0, i32 %xor.i29.i.i
  %9 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i30.i.i, align 1
  %11 = xor i8 %10, -1
  %12 = lshr i16 %8, 8
  %13 = zext i8 %11 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %13)
  %cmp.not.i = icmp eq i16 %12, %13
  br i1 %cmp.not.i, label %if.end, label %bcma_sprom_check_crc.exit.cleanup_crit_edge

bcma_sprom_check_crc.exit.cleanup_crit_edge:      ; preds = %bcma_sprom_check_crc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %bcma_sprom_check_crc.exit
  %14 = and i16 %8, 255
  %conv2 = zext i16 %14 to i32
  %.off = add nsw i16 %14, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv2) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sprom16 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 18
  %15 = ptrtoint ptr %sprom16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11.i.i, ptr %sprom16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_sprom_valid.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_sprom_valid, %cleanup)) #6
          to label %if.then25 [label %cleanup], !srcloc !45

if.then25:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num, align 1
  %conv26 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_sprom_valid.__UNIQUE_ID_ddebug237, ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %conv26, i32 noundef %conv2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end14, %do.end, %bcma_sprom_check_crc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end ], [ -71, %bcma_sprom_check_crc.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @bcma_sprom_get.sprom_sizes, !1, !"sprom_sizes", i1 false, i1 false}
!1 = !{!"../drivers/bcma/sprom.c", i32 581, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bcma/sprom.c", i32 619, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bcma_sprom_get.__UNIQUE_ID_ddebug239, !3, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bcma/sprom.c", i32 640, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bcma_sprom_get._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @bcma_sprom_get._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @get_fallback_sprom, !15, !"get_fallback_sprom", i1 false, i1 false}
!15 = !{!"../drivers/bcma/sprom.c", i32 19, i32 13}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bcma/sprom.c", i32 63, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcma_fill_sprom_with_fallback.__UNIQUE_ID_ddebug236, !17, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bcma/sprom.c", i32 67, i32 2}
!22 = !{ptr @bcma_fill_sprom_with_fallback._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcma_fill_sprom_with_fallback._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bcma/sprom.c", i32 169, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bcma_sprom_valid._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcma_sprom_valid._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bcma/sprom.c", i32 174, i32 2}
!31 = !{ptr @bcma_sprom_valid.__UNIQUE_ID_ddebug237, !30, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!32 = !{ptr @bcma_crc8.t, !33, !"t", i1 false, i1 false}
!33 = !{!"../drivers/bcma/sprom.c", i32 90, i32 18}
!34 = !{ptr @bcma_sprom_extract_r8.pwr_info_offset, !35, !"pwr_info_offset", i1 false, i1 false}
!35 = !{!"../drivers/bcma/sprom.c", i32 225, i32 19}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148526394, i64 2148526399, i64 2148526412, i64 2148526456, i64 2148526490, i64 2148526511}
!46 = !{!"branch_weights", i32 1, i32 2000}
