; ModuleID = '/llk/IR_all_yes/drivers/ssb/pci.c_pt.bc'
source_filename = "../drivers/ssb/pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.69, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.69 = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssb_pci_switch_coreidx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ssb: Failed to switch to core %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ssb_pci_switch_coreidx\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/ssb/pci.c\00", [46 x i8] zeroinitializer }, align 32
@ssb_pci_switch_coreidx._entry_ptr = internal global ptr @ssb_pci_switch_coreidx._entry, section ".printk_index", align 4
@ssb_pci_xtal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ssb: Error: ssb_pci_xtal() could not access PCI config space!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssb_pci_xtal\00", [19 x i8] zeroinitializer }, align 32
@ssb_pci_xtal._entry_ptr = internal global ptr @ssb_pci_xtal._entry, section ".printk_index", align 4
@ssb_pci_ops = dso_local constant { %struct.ssb_bus_ops, [32 x i8] } { %struct.ssb_bus_ops { ptr @ssb_pci_read8, ptr @ssb_pci_read16, ptr @ssb_pci_read32, ptr @ssb_pci_write8, ptr @ssb_pci_write16, ptr @ssb_pci_write32, ptr @ssb_pci_block_read, ptr @ssb_pci_block_write }, [32 x i8] zeroinitializer }, align 32
@dev_attr_ssb_sprom = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ssb_sprom_show, ptr @ssb_sprom_store }, [36 x i8] zeroinitializer }, align 32
@ssb_pci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&bus->sprom_mutex\00", [46 x i8] zeroinitializer }, align 32
@ssb_pci_sprom_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ssb: No SPROM available!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssb_pci_sprom_get\00", [46 x i8] zeroinitializer }, align 32
@ssb_pci_sprom_get._entry_ptr = internal global ptr @ssb_pci_sprom_get._entry, section ".printk_index", align 4
@ssb_pci_sprom_get.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssb\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPROM offset is 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssb: SPROM offset is 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@ssb_pci_sprom_get._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014ssb: WARNING: Using fallback SPROM failed (err %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@ssb_pci_sprom_get._entry_ptr.13 = internal global ptr @ssb_pci_sprom_get._entry.11, section ".printk_index", align 4
@ssb_pci_sprom_get.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.7, ptr @.str.2, ptr @.str.14, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Using SPROM revision %d provided by platform\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ssb: Using SPROM revision %d provided by platform\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssb_crc8.t = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\F7\B9N%\D2\9CkJ\BD\F3\04o\98\D6!\94c-\DA\B1F\08\FF\DE)g\90\FB\0CB\B5\7F\88\C61Z\AD\E3\145\C2\8C{\10\E7\A9^\EB\1CR\A5\CE9w\80\A1V\18\EF\84s=\CA\FE\09G\B0\DB,b\95\B4C\0D\FA\91f(\DFj\9D\D3$O\B8\F6\01 \D7\99n\05\F2\BCK\81v8\CF\A4S\1D\EA\CB<r\85\EE\19W\A0\15\E2\AC[0\C7\89~_\A8\E6\11z\8D\C34\AB\\\12\E5\8Ey7\C0\E1\16X\AF\C43}\8A?\C8\86q\1A\ED\A3Tu\82\CC;P\A7\E9\1E\D4#m\9A\F1\06H\BF\9Ei'\D0\BBL\02\F5@\B7\F9\0Ee\92\DC+\0A\FD\B3D/\D8\96aU\A2\EC\1Bp\87\C9>\1F\E8\A6Q:\CD\83t\C16x\8F\E4\13]\AA\8B|2\C5\AEY\17\E0*\DD\93d\0F\F8\B6A`\97\D9.E\B2\FC\0B\BEI\07\F0\9Bl\22\D5\F4\03M\BA\D1&h\9F", [64 x i8] zeroinitializer }, align 32
@sprom_extract.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sprom_extract\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPROM revision %d detected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ssb: SPROM revision %d detected\0A\00", [63 x i8] zeroinitializer }, align 32
@sprom_extract.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPROM treated as revision %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ssb: SPROM treated as revision %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sprom_extract._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014ssb: Unsupported SPROM revision %d detected. Will extract v1\0A\00", [32 x i8] zeroinitializer }, align 32
@sprom_extract._entry_ptr = internal global ptr @sprom_extract._entry, section ".printk_index", align 4
@sprom_extract_r45.pwr_info_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 128, i16 174, i16 220, i16 266], [24 x i8] zeroinitializer }, align 32
@sprom_extract_r8.pwr_info_offset = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 192, i16 224, i16 256, i16 288], [24 x i8] zeroinitializer }, align 32
@ssb_pci_assert_buspower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013ssb: FATAL ERROR: Bus powered down while accessing PCI MMIO space\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ssb_pci_assert_buspower\00", [40 x i8] zeroinitializer }, align 32
@ssb_pci_assert_buspower._entry_ptr = internal global ptr @ssb_pci_assert_buspower._entry, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssb_sprom\00", [22 x i8] zeroinitializer }, align 32
@sprom_do_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015ssb: Writing SPROM. Do NOT turn off the power! Please stand by...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprom_do_write\00", [17 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr = internal global ptr @sprom_do_write._entry, section ".printk_index", align 4
@sprom_do_write._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\015ssb: [ 0%%\00", [19 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.29 = internal global ptr @sprom_do_write._entry.27, section ".printk_index", align 4
@sprom_do_write._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c25%%\00", [25 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.32 = internal global ptr @sprom_do_write._entry.30, section ".printk_index", align 4
@sprom_do_write._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c50%%\00", [25 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.35 = internal global ptr @sprom_do_write._entry.33, section ".printk_index", align 4
@sprom_do_write._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c75%%\00", [25 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.38 = internal global ptr @sprom_do_write._entry.36, section ".printk_index", align 4
@sprom_do_write._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c.\00", [28 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.41 = internal global ptr @sprom_do_write._entry.39, section ".printk_index", align 4
@sprom_do_write._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c100%% ]\0A\00", [21 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.44 = internal global ptr @sprom_do_write._entry.42, section ".printk_index", align 4
@sprom_do_write._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015ssb: SPROM written\0A\00", [42 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.47 = internal global ptr @sprom_do_write._entry.45, section ".printk_index", align 4
@sprom_do_write._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.26, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ssb: Could not access SPROM control register.\0A\00", [47 x i8] zeroinitializer }, align 32
@sprom_do_write._entry_ptr.50 = internal global ptr @sprom_do_write._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 59, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 163, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"ssb_pci_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1107, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"dev_attr_ssb_sprom\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1170, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 864, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 883, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 908, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 912, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 195, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 817, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 826, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 843, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 471, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"pwr_info_offset\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 598, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 953, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1149, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 288, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 296, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 300, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 302, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 304, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 306, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 318, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 319, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [21 x i8] c"../drivers/ssb/pci.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 323, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @sprom_do_write._entry, ptr @sprom_do_write._entry.27, ptr @sprom_do_write._entry.30, ptr @sprom_do_write._entry.33, ptr @sprom_do_write._entry.36, ptr @sprom_do_write._entry.39, ptr @sprom_do_write._entry.42, ptr @sprom_do_write._entry.45, ptr @sprom_do_write._entry.48, ptr @sprom_do_write._entry_ptr, ptr @sprom_do_write._entry_ptr.29, ptr @sprom_do_write._entry_ptr.32, ptr @sprom_do_write._entry_ptr.35, ptr @sprom_do_write._entry_ptr.38, ptr @sprom_do_write._entry_ptr.41, ptr @sprom_do_write._entry_ptr.44, ptr @sprom_do_write._entry_ptr.47, ptr @sprom_do_write._entry_ptr.50, ptr @sprom_extract._entry, ptr @sprom_extract._entry_ptr, ptr @ssb_pci_assert_buspower._entry, ptr @ssb_pci_assert_buspower._entry_ptr, ptr @ssb_pci_sprom_get._entry, ptr @ssb_pci_sprom_get._entry.11, ptr @ssb_pci_sprom_get._entry_ptr, ptr @ssb_pci_sprom_get._entry_ptr.13, ptr @ssb_pci_switch_coreidx._entry, ptr @ssb_pci_switch_coreidx._entry_ptr, ptr @ssb_pci_xtal._entry, ptr @ssb_pci_xtal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ssb_pci_ops, ptr @dev_attr_ssb_sprom, ptr @ssb_pci_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ssb_crc8.t, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @sprom_extract_r45.pwr_info_offset, ptr @sprom_extract_r8.pwr_info_offset, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_switch_coreidx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_xtal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ssb_sprom to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_sprom_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_sprom_get._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_crc8.t to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_extract._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_extract_r45.pwr_info_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_extract_r8.pwr_info_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_pci_assert_buspower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprom_do_write._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pci_switch_coreidx(ptr nocapture noundef readonly %bus, i8 noundef zeroext %coreidx) local_unnamed_addr #0 align 64 {
entry:
  %cur_core = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_core) #8
  %0 = ptrtoint ptr %cur_core to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_core, align 4, !annotation !107
  %1 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %conv = zext i8 %coreidx to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add = or i32 %mul, 402653184
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call23 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 128, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not24 = icmp eq i32 %call23, 0
  br i1 %tobool.not24, label %entry.if.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end12.if.end_crit_edge, %entry.if.end_crit_edge
  %attempts.025 = phi i32 [ %inc, %if.end12.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 128, ptr noundef nonnull %cur_core) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %cur_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_core, align 4
  %sub = add i32 %7, -402653184
  %div21 = lshr i32 %sub, 12
  store i32 %div21, ptr %cur_core, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div21, i32 %conv)
  %cmp = icmp eq i32 %div21, %conv
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %attempts.025)
  %exitcond = icmp eq i32 %attempts.025, 51
  br i1 %exitcond, label %if.end8.do.end_crit_edge, label %if.end12

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end12:                                         ; preds = %if.end8
  %inc = add nuw nsw i32 %attempts.025, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 2147480) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 128, i32 noundef %add) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end12.if.end_crit_edge, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end12.if.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.end12.do.end_crit_edge, %if.end8.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_core) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pci_switch_core(ptr noundef %bus, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bar_lock = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bar_lock) #8
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %core_index, align 2
  %call5 = tail call i32 @ssb_pci_switch_coreidx(ptr noundef %bus, i8 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 2
  %2 = ptrtoint ptr %mapped_device to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %mapped_device, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bar_lock, i32 noundef %call2) #8
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pci_xtal(ptr nocapture noundef readonly %bus, i32 noundef %what, i32 noundef %turn_on) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %outenable = alloca i32, align 4
  %pci_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #8
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %in, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #8
  %1 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %out, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outenable) #8
  %2 = ptrtoint ptr %outenable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %outenable, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status) #8
  %3 = ptrtoint ptr %pci_status to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %pci_status, align 2, !annotation !107
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %4 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef 176, ptr noundef nonnull %in) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call3 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef 180, ptr noundef nonnull %out) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.do.end_crit_edge

if.end2.do.end_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end6:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %call7 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef 184, ptr noundef nonnull %outenable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end10:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %outenable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %outenable, align 4
  %or = or i32 %14, %what
  store i32 %or, ptr %outenable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %turn_on)
  %tobool11.not = icmp eq i32 %turn_on, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  %and = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.then12.if.end42_crit_edge

if.then12.if.end42_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then14:                                        ; preds = %if.then12
  %and15 = and i32 %what, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then14.if.end32_crit_edge, label %if.then17

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i32 %what, 128
  br label %if.end32

if.then17:                                        ; preds = %if.then14
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out, align 4
  %and19 = and i32 %what, 128
  %19 = or i32 %and19, %18
  %spec.select = or i32 %19, 64
  store i32 %spec.select, ptr %out, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %call24 = call i32 @pci_write_config_dword(ptr noundef %21, i32 noundef 180, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then17.do.end_crit_edge

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end27:                                         ; preds = %if.then17
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %24 = ptrtoint ptr %outenable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outenable, align 4
  %call28 = call i32 @pci_write_config_dword(ptr noundef %23, i32 noundef 184, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.do.end_crit_edge

if.end27.do.end_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then14.if.end32_crit_edge
  %and33.pre-phi = phi i32 [ %.pre, %if.then14.if.end32_crit_edge ], [ %and19, %if.end31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.pre-phi)
  %tobool34.not = icmp eq i32 %and33.pre-phi, 0
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out, align 4
  %and36 = and i32 %27, -129
  store i32 %and36, ptr %out, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call37 = call i32 @pci_write_config_dword(ptr noundef %29, i32 noundef 180, i32 noundef %and36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.do.end_crit_edge

if.then35.do.end_crit_edge:                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end40:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 5) #8
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.end32.if.end42_crit_edge, %if.then12.if.end42_crit_edge
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 4
  %call43 = call i32 @pci_read_config_word(ptr noundef %31, i32 noundef 6, ptr noundef nonnull %pci_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.do.end_crit_edge

if.end42.do.end_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end46:                                         ; preds = %if.end42
  %32 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pci_status, align 2
  %34 = and i16 %33, -2049
  store i16 %34, ptr %pci_status, align 2
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %call49 = call i32 @pci_write_config_word(ptr noundef %36, i32 noundef 6, i16 noundef zeroext %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end46.do.end_crit_edge

if.end46.do.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %and53 = and i32 %what, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else.if.end57_crit_edge, label %if.then55

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out, align 4
  %and56 = and i32 %38, -65
  store i32 %and56, ptr %out, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.else.if.end57_crit_edge
  %and58 = and i32 %what, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.then60

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %out, align 4
  %or61 = or i32 %40, 128
  store i32 %or61, ptr %out, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %6, align 4
  %43 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out, align 4
  %call63 = call i32 @pci_write_config_dword(ptr noundef %42, i32 noundef 180, i32 noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.do.end_crit_edge

if.end62.do.end_crit_edge:                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end66:                                         ; preds = %if.end62
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %6, align 4
  %47 = ptrtoint ptr %outenable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %outenable, align 4
  %call67 = call i32 @pci_write_config_dword(ptr noundef %46, i32 noundef 184, i32 noundef %48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end66.do.end_crit_edge

if.end66.do.end_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end66.do.end_crit_edge, %if.end62.do.end_crit_edge, %if.end46.do.end_crit_edge, %if.end42.do.end_crit_edge, %if.then35.do.end_crit_edge, %if.end27.do.end_crit_edge, %if.then17.do.end_crit_edge, %if.end6.do.end_crit_edge, %if.end2.do.end_crit_edge, %if.end.do.end_crit_edge
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end66.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %do.end ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outenable) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pci_get_invariants(ptr noundef %bus, ptr noundef %iv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1
  %call = tail call fastcc i32 @ssb_pci_sprom_get(ptr noundef %bus, ptr noundef %sprom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_vendor.i, align 4
  %5 = ptrtoint ptr %iv to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %iv, align 2
  %6 = load ptr, ptr %0, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_device.i, align 2
  %type.i = getelementptr inbounds %struct.ssb_boardinfo, ptr %iv, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %type.i, align 2
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssb_pci_sprom_get(ptr noundef %bus, ptr noundef %sprom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ssb_is_sprom_available(ptr noundef %bus) #8
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17
  %0 = ptrtoint ptr %chipco to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chipco, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.do.body22_crit_edge, label %if.then2

if.end.do.body22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.then2:                                         ; preds = %if.end
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %3)
  %cmp = icmp ugt i8 %3, 30
  br i1 %cmp, label %if.then2.do.body22_crit_edge, label %if.else

if.then2.do.body22_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.else:                                          ; preds = %if.then2
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17170, i16 %5)
  %cmp8 = icmp eq i16 %5, 17170
  br i1 %cmp8, label %land.lhs.true, label %if.else.if.else15_crit_edge

if.else.if.else15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true:                                    ; preds = %if.else
  %status = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp11 = icmp eq i32 %and, 2
  br i1 %cmp11, label %land.lhs.true.do.body22_crit_edge, label %land.lhs.true.if.else15_crit_edge

land.lhs.true.if.else15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else15

land.lhs.true.do.body22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

if.else15:                                        ; preds = %land.lhs.true.if.else15_crit_edge, %if.else.if.else15_crit_edge
  br label %do.body22

do.body22:                                        ; preds = %if.else15, %land.lhs.true.do.body22_crit_edge, %if.then2.do.body22_crit_edge, %if.end.do.body22_crit_edge
  %.sink = phi i16 [ 4096, %if.else15 ], [ 2048, %if.then2.do.body22_crit_edge ], [ 2048, %land.lhs.true.do.body22_crit_edge ], [ 4096, %if.end.do.body22_crit_edge ]
  %sprom_offset20 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 11
  %8 = ptrtoint ptr %sprom_offset20 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink, ptr %sprom_offset20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_pci_sprom_get.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_pci_sprom_get, %if.then28)) #8
          to label %do.end33 [label %if.then28], !srcloc !108

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %sprom_offset29 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 11
  %9 = ptrtoint ptr %sprom_offset29 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sprom_offset29, align 4
  %conv30 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssb_pci_sprom_get.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.10, i32 noundef %conv30) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 128) #12
  %tobool35.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool35.not, label %do.end33.cleanup_crit_edge, label %for.body.lr.ph.i

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end33
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %12 = ptrtoint ptr %sprom_size to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 64, ptr %sprom_size, align 2
  %sprom_offset.i = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %15 = ptrtoint ptr %sprom_offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sprom_offset.i, align 4
  %conv2.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv2.i
  %mul.i = shl nuw i32 %i.011.i, 1
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #8, !srcloc !109
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %arrayidx.i = getelementptr i16, ptr %call7.i.i.i, i32 %i.011.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %20 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sprom_size, align 2
  %conv.i = zext i16 %21 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %sprom_do_read.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sprom_do_read.exit:                               ; preds = %for.body.i
  %22 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sprom_size, align 2
  %conv40 = zext i16 %23 to i32
  %sub.i.i = add nsw i32 %conv40, -1
  %24 = and i32 %conv40, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp34.i.not.i = icmp eq i32 %24, 0
  br i1 %cmp34.i.not.i, label %sprom_do_read.exit.sprom_check_crc.exit_crit_edge, label %sprom_do_read.exit.for.body.i.i_crit_edge

sprom_do_read.exit.for.body.i.i_crit_edge:        ; preds = %sprom_do_read.exit
  br label %for.body.i.i

sprom_do_read.exit.sprom_check_crc.exit_crit_edge: ; preds = %sprom_do_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sprom_check_crc.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sprom_do_read.exit.for.body.i.i_crit_edge
  %crc.036.i.i = phi i8 [ %31, %for.body.i.i.for.body.i.i_crit_edge ], [ -1, %sprom_do_read.exit.for.body.i.i_crit_edge ]
  %word.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sprom_do_read.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %call7.i.i.i, i32 %word.035.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i, align 2
  %conv3.i.i = trunc i16 %26 to i8
  %xor2.i.i.i = xor i8 %crc.036.i.i, %conv3.i.i
  %xor.i.i.i = zext i8 %xor2.i.i.i to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i.i.i
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i.i, align 1
  %29 = lshr i16 %26, 8
  %conv7.i.i = trunc i16 %29 to i8
  %xor2.i28.i.i = xor i8 %28, %conv7.i.i
  %xor.i29.i.i = zext i8 %xor2.i28.i.i to i32
  %arrayidx.i30.i.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i29.i.i
  %30 = ptrtoint ptr %arrayidx.i30.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i30.i.i, align 1
  %inc.i.i = add nuw nsw i32 %word.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.sprom_check_crc.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.sprom_check_crc.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sprom_check_crc.exit

sprom_check_crc.exit:                             ; preds = %for.body.i.i.sprom_check_crc.exit_crit_edge, %sprom_do_read.exit.sprom_check_crc.exit_crit_edge
  %crc.0.lcssa.i.i = phi i8 [ -1, %sprom_do_read.exit.sprom_check_crc.exit_crit_edge ], [ %31, %for.body.i.i.sprom_check_crc.exit_crit_edge ]
  %arrayidx11.i.i = getelementptr i16, ptr %call7.i.i.i, i32 %sub.i.i
  %32 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx11.i.i, align 2
  %conv14.i.i = trunc i16 %33 to i8
  %xor2.i31.i.i = xor i8 %crc.0.lcssa.i.i, %conv14.i.i
  %xor.i32.i.i = zext i8 %xor2.i31.i.i to i32
  %arrayidx.i33.i.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i32.i.i
  %34 = ptrtoint ptr %arrayidx.i33.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i33.i.i, align 1
  %36 = xor i8 %35, -1
  %37 = lshr i16 %33, 8
  %38 = zext i8 %36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %38)
  %cmp.not.i = icmp eq i16 %37, %38
  br i1 %cmp.not.i, label %sprom_check_crc.exit.if.end83_crit_edge, label %if.then43

sprom_check_crc.exit.if.end83_crit_edge:          ; preds = %sprom_check_crc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then43:                                        ; preds = %sprom_check_crc.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i123 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 440) #12
  %tobool45.not = icmp eq ptr %call7.i.i.i123, null
  br i1 %tobool45.not, label %if.then43.cleanup_crit_edge, label %for.body.lr.ph.i127

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i127:                              ; preds = %if.then43
  %40 = ptrtoint ptr %sprom_size to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 220, ptr %sprom_size, align 2
  br label %for.body.i137

for.body.i137:                                    ; preds = %for.body.i137.for.body.i137_crit_edge, %for.body.lr.ph.i127
  %i.011.i128 = phi i32 [ 0, %for.body.lr.ph.i127 ], [ %inc.i134, %for.body.i137.for.body.i137_crit_edge ]
  %41 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus, align 4
  %43 = ptrtoint ptr %sprom_offset.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %sprom_offset.i, align 4
  %conv2.i129 = zext i16 %44 to i32
  %add.ptr.i130 = getelementptr i8, ptr %42, i32 %conv2.i129
  %mul.i131 = shl nuw i32 %i.011.i128, 1
  %add.ptr3.i132 = getelementptr i8, ptr %add.ptr.i130, i32 %mul.i131
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i132) #8, !srcloc !109
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %arrayidx.i133 = getelementptr i16, ptr %call7.i.i.i123, i32 %i.011.i128
  %47 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx.i133, align 2
  %inc.i134 = add nuw nsw i32 %i.011.i128, 1
  %48 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sprom_size, align 2
  %conv.i135 = zext i16 %49 to i32
  %cmp.i136 = icmp ult i32 %inc.i134, %conv.i135
  br i1 %cmp.i136, label %for.body.i137.for.body.i137_crit_edge, label %sprom_do_read.exit138

for.body.i137.for.body.i137_crit_edge:            ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i137

sprom_do_read.exit138:                            ; preds = %for.body.i137
  %50 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sprom_size, align 2
  %conv51 = zext i16 %51 to i32
  %sub.i.i140 = add nsw i32 %conv51, -1
  %52 = and i32 %conv51, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp34.i.not.i141 = icmp eq i32 %52, 0
  br i1 %cmp34.i.not.i141, label %sprom_do_read.exit138.sprom_check_crc.exit166_crit_edge, label %sprom_do_read.exit138.for.body.i.i155_crit_edge

sprom_do_read.exit138.for.body.i.i155_crit_edge:  ; preds = %sprom_do_read.exit138
  br label %for.body.i.i155

sprom_do_read.exit138.sprom_check_crc.exit166_crit_edge: ; preds = %sprom_do_read.exit138
  call void @__sanitizer_cov_trace_pc() #10
  br label %sprom_check_crc.exit166

for.body.i.i155:                                  ; preds = %for.body.i.i155.for.body.i.i155_crit_edge, %sprom_do_read.exit138.for.body.i.i155_crit_edge
  %crc.036.i.i142 = phi i8 [ %59, %for.body.i.i155.for.body.i.i155_crit_edge ], [ -1, %sprom_do_read.exit138.for.body.i.i155_crit_edge ]
  %word.035.i.i143 = phi i32 [ %inc.i.i153, %for.body.i.i155.for.body.i.i155_crit_edge ], [ 0, %sprom_do_read.exit138.for.body.i.i155_crit_edge ]
  %arrayidx.i.i144 = getelementptr i16, ptr %call7.i.i.i123, i32 %word.035.i.i143
  %53 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i.i144, align 2
  %conv3.i.i145 = trunc i16 %54 to i8
  %xor2.i.i.i146 = xor i8 %crc.036.i.i142, %conv3.i.i145
  %xor.i.i.i147 = zext i8 %xor2.i.i.i146 to i32
  %arrayidx.i.i.i148 = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i.i.i147
  %55 = ptrtoint ptr %arrayidx.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.i.i148, align 1
  %57 = lshr i16 %54, 8
  %conv7.i.i149 = trunc i16 %57 to i8
  %xor2.i28.i.i150 = xor i8 %56, %conv7.i.i149
  %xor.i29.i.i151 = zext i8 %xor2.i28.i.i150 to i32
  %arrayidx.i30.i.i152 = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i29.i.i151
  %58 = ptrtoint ptr %arrayidx.i30.i.i152 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i30.i.i152, align 1
  %inc.i.i153 = add nuw nsw i32 %word.035.i.i143, 1
  %exitcond.not.i.i154 = icmp eq i32 %inc.i.i153, %sub.i.i140
  br i1 %exitcond.not.i.i154, label %for.body.i.i155.sprom_check_crc.exit166_crit_edge, label %for.body.i.i155.for.body.i.i155_crit_edge

for.body.i.i155.for.body.i.i155_crit_edge:        ; preds = %for.body.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i155

for.body.i.i155.sprom_check_crc.exit166_crit_edge: ; preds = %for.body.i.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sprom_check_crc.exit166

sprom_check_crc.exit166:                          ; preds = %for.body.i.i155.sprom_check_crc.exit166_crit_edge, %sprom_do_read.exit138.sprom_check_crc.exit166_crit_edge
  %crc.0.lcssa.i.i156 = phi i8 [ -1, %sprom_do_read.exit138.sprom_check_crc.exit166_crit_edge ], [ %59, %for.body.i.i155.sprom_check_crc.exit166_crit_edge ]
  %arrayidx11.i.i157 = getelementptr i16, ptr %call7.i.i.i123, i32 %sub.i.i140
  %60 = ptrtoint ptr %arrayidx11.i.i157 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx11.i.i157, align 2
  %conv14.i.i158 = trunc i16 %61 to i8
  %xor2.i31.i.i159 = xor i8 %crc.0.lcssa.i.i156, %conv14.i.i158
  %xor.i32.i.i160 = zext i8 %xor2.i31.i.i159 to i32
  %arrayidx.i33.i.i161 = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i32.i.i160
  %62 = ptrtoint ptr %arrayidx.i33.i.i161 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i33.i.i161, align 1
  %64 = xor i8 %63, -1
  %65 = lshr i16 %61, 8
  %66 = zext i8 %64 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %66)
  %cmp.not.i164 = icmp eq i16 %65, %66
  br i1 %cmp.not.i164, label %sprom_check_crc.exit166.if.end83_crit_edge, label %if.then54

sprom_check_crc.exit166.if.end83_crit_edge:       ; preds = %sprom_check_crc.exit166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then54:                                        ; preds = %sprom_check_crc.exit166
  %call55 = tail call i32 @ssb_fill_sprom_with_fallback(ptr noundef %bus, ptr noundef %sprom) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body64, label %do.end60

do.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call55) #11
  br label %out_free

do.body64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_pci_sprom_get.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_pci_sprom_get, %if.then76)) #8
          to label %out_free [label %if.then76], !srcloc !108

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %sprom to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %sprom, align 4
  %conv78 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssb_pci_sprom_get.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.15, i32 noundef %conv78) #8
  br label %out_free

if.end83:                                         ; preds = %sprom_check_crc.exit166.if.end83_crit_edge, %sprom_check_crc.exit.if.end83_crit_edge
  %buf.0 = phi ptr [ %call7.i.i.i123, %sprom_check_crc.exit166.if.end83_crit_edge ], [ %call7.i.i.i, %sprom_check_crc.exit.if.end83_crit_edge ]
  %69 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sprom_size, align 2
  tail call fastcc void @sprom_extract(ptr noundef %bus, ptr noundef %sprom, ptr noundef nonnull %buf.0, i16 noundef zeroext %70)
  br label %out_free

out_free:                                         ; preds = %if.end83, %if.then76, %do.body64, %do.end60
  %buf.1 = phi ptr [ %call7.i.i.i123, %do.end60 ], [ %buf.0, %if.end83 ], [ %call7.i.i.i123, %if.then76 ], [ %call7.i.i.i123, %do.body64 ]
  %err.0 = phi i32 [ %call55, %do.end60 ], [ 0, %if.end83 ], [ 0, %if.then76 ], [ 0, %do.body64 ]
  tail call void @kfree(ptr noundef %buf.1) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then43.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -19, %do.end ], [ -12, %do.end33.cleanup_crit_edge ], [ -12, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ssb_pci_read8(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i8 [ %11, %if.end21 ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.then3.i ], [ -1, %do.end.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ssb_pci_read16(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !109
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i16 [ %12, %if.end21 ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.then3.i ], [ -1, %do.end.i.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_pci_read32(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end21 ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.then3.i ], [ -1, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pci_write8(ptr noundef %dev, i16 noundef zeroext %offset, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #8, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pci_write16(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %11 = tail call i16 @llvm.bswap.i16(i16 %value) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %11) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pci_write32(ptr noundef %dev, i16 noundef zeroext %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp.i = icmp slt i32 %5, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %5, 1
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %8, %dev
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then10, !prof !113

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end21_crit_edge, label %if.then10.cleanup_crit_edge, !prof !113

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then10.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %value) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then10.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pci_block_read(ptr noundef %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp.i = icmp slt i32 %7, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.error_crit_edge

do.end.i.error_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %7, 1
  %8 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %error

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %10, %dev
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then11, !prof !113

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end22_crit_edge, label %if.then11.error_crit_edge, !prof !113

if.then11.error_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then11.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %11 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %do.end97 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb24
    i8 4, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_readsb(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #8
  br label %cleanup

sw.bb24:                                          ; preds = %if.end22
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %sw.bb24.if.end44_crit_edge, label %do.end, !prof !113

sw.bb24.if.end44_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end:                                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1019, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end, %sw.bb24.if.end44_crit_edge
  %shr = lshr i32 %count, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr) #8
  br label %cleanup

sw.bb51:                                          ; preds = %if.end22
  %and53 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sw.bb51.if.end76_crit_edge, label %do.end70, !prof !113

sw.bb51.if.end76_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end70:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1023, i32 noundef 9, ptr noundef null) #8
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %sw.bb51.if.end76_crit_edge
  %shr84 = lshr i32 %count, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr84) #8
  br label %cleanup

do.end97:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1027, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

error:                                            ; preds = %if.then11.error_crit_edge, %if.then3.i, %do.end.i.error_crit_edge
  %12 = call ptr @memset(ptr %buffer, i32 255, i32 %count)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end97, %if.end76, %if.end44, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_pci_block_write(ptr noundef %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %powered_up.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %powered_up.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powered_up.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end, !prof !112

do.end.i:                                         ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %power_warn_count.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_warn_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp.i = icmp slt i32 %7, 11
  br i1 %cmp.i, label %if.then3.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %7, 1
  %8 = ptrtoint ptr %power_warn_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %power_warn_count.i, align 4
  tail call void @dump_stack() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapped_device = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mapped_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapped_device, align 4
  %cmp.not = icmp eq ptr %10, %dev
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %if.then11, !prof !113

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @ssb_pci_switch_core(ptr noundef %1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end22_crit_edge, label %if.then11.cleanup_crit_edge, !prof !113

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then11.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %11 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %reg_width, label %do.end97 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb24
    i8 4, label %sw.bb51
  ]

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_writesb(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #8
  br label %cleanup

sw.bb24:                                          ; preds = %if.end22
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %sw.bb24.if.end44_crit_edge, label %do.end, !prof !113

sw.bb24.if.end44_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end:                                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1093, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end, %sw.bb24.if.end44_crit_edge
  %shr = lshr i32 %count, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr) #8
  br label %cleanup

sw.bb51:                                          ; preds = %if.end22
  %and53 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sw.bb51.if.end76_crit_edge, label %do.end70, !prof !113

sw.bb51.if.end76_crit_edge:                       ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end70:                                         ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1097, i32 noundef 9, ptr noundef null) #8
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %sw.bb51.if.end76_crit_edge
  %shr84 = lshr i32 %count, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr84) #8
  br label %cleanup

do.end97:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1101, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.end76, %if.end44, %sw.bb, %if.then11.cleanup_crit_edge, %if.then3.i, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pci_exit(ptr nocapture noundef readonly %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ssb_sprom) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pci_init(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %sprom_mutex = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %sprom_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @ssb_pci_init.__key) #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_ssb_sprom) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ssb_is_sprom_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprom_do_read(ptr nocapture noundef readonly %bus, ptr nocapture noundef writeonly %sprom) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sprom_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sprom_offset = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %4 = ptrtoint ptr %sprom_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sprom_offset, align 4
  %conv2 = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv2
  %mul = shl nuw i32 %i.011, 1
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #8, !srcloc !109
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %arrayidx = getelementptr i16, ptr %sprom, i32 %i.011
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.011, 1
  %9 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sprom_size, align 2
  %conv = zext i16 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sprom_check_crc(ptr nocapture noundef readonly %sprom, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = and i32 %size, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %0 = and i32 %size, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp34.i.not = icmp eq i32 %0, 0
  br i1 %cmp34.i.not, label %entry.ssb_sprom_crc.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ssb_sprom_crc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssb_sprom_crc.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %crc.036.i = phi i8 [ %7, %for.body.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %word.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %sprom, i32 %word.035.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i, align 2
  %conv3.i = trunc i16 %2 to i8
  %xor2.i.i = xor i8 %crc.036.i, %conv3.i
  %xor.i.i = zext i8 %xor2.i.i to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %5 = lshr i16 %2, 8
  %conv7.i = trunc i16 %5 to i8
  %xor2.i28.i = xor i8 %4, %conv7.i
  %xor.i29.i = zext i8 %xor2.i28.i to i32
  %arrayidx.i30.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i29.i
  %6 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i30.i, align 1
  %inc.i = add nuw nsw i32 %word.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.ssb_sprom_crc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.ssb_sprom_crc.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ssb_sprom_crc.exit

ssb_sprom_crc.exit:                               ; preds = %for.body.i.ssb_sprom_crc.exit_crit_edge, %entry.ssb_sprom_crc.exit_crit_edge
  %crc.0.lcssa.i = phi i8 [ -1, %entry.ssb_sprom_crc.exit_crit_edge ], [ %7, %for.body.i.ssb_sprom_crc.exit_crit_edge ]
  %arrayidx11.i = getelementptr i16, ptr %sprom, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx11.i, align 2
  %conv14.i = trunc i16 %9 to i8
  %xor2.i31.i = xor i8 %crc.0.lcssa.i, %conv14.i
  %xor.i32.i = zext i8 %xor2.i31.i to i32
  %arrayidx.i33.i = getelementptr [256 x i8], ptr @ssb_crc8.t, i32 0, i32 %xor.i32.i
  %10 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i33.i, align 1
  %12 = xor i8 %11, -1
  %sub = add i32 %size, -1
  %arrayidx = getelementptr i16, ptr %sprom, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %15 = lshr i16 %14, 8
  %16 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %16)
  %cmp.not = icmp eq i16 %15, %16
  %. = select i1 %cmp.not, i32 0, i32 -71
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_fill_sprom_with_fallback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprom_extract(ptr nocapture noundef readonly %bus, ptr noundef %out, ptr noundef %in, i16 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %out, i32 0, i32 540)
  %conv = zext i16 %size to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i16, ptr %in, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv2 = trunc i16 %2 to i8
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %out, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sprom_extract.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sprom_extract, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %out, align 4
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sprom_extract.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.18, i32 noundef %conv6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %et0mac = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 3
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 9
  %6 = call ptr @memset(ptr %et0mac, i32 255, i32 12)
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chip_id, align 4
  %9 = and i16 %8, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 17408, i16 %9)
  %cmp = icmp eq i16 %9, 17408
  br i1 %cmp, label %if.then11, label %do.end.if.end30_crit_edge

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %out, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sprom_extract.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sprom_extract, %if.then25)) #8
          to label %if.end30 [label %if.then25], !srcloc !108

if.then25:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %out, align 4
  %conv27 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sprom_extract.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.20, i32 noundef %conv27) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then11, %do.end.if.end30_crit_edge
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %out, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %14, label %do.end36 [
    i8 1, label %if.end30.sw.bb_crit_edge
    i8 2, label %if.end30.sw.bb_crit_edge120
    i8 3, label %if.end30.sw.bb_crit_edge121
    i8 4, label %if.end30.sw.bb33_crit_edge
    i8 5, label %if.end30.sw.bb33_crit_edge122
    i8 8, label %sprom_extract_antgain.exit1273.i
  ]

if.end30.sw.bb33_crit_edge122:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end30.sw.bb33_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end30.sw.bb_crit_edge121:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end30.sw.bb_crit_edge120:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge120, %if.end30.sw.bb_crit_edge121
  tail call fastcc void @sprom_extract_r123(ptr noundef %out, ptr noundef %in)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end30.sw.bb33_crit_edge, %if.end30.sw.bb33_crit_edge122
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp.i = icmp eq i8 %14, 4
  %..i = select i1 %cmp.i, i32 38, i32 41
  %il0mac.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 2
  %arrayidx.i = getelementptr i16, ptr %in, i32 %..i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %18 = lshr i16 %17, 8
  %conv1.i.i = trunc i16 %18 to i8
  %incdec.ptr.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %il0mac.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i.i, ptr %il0mac.i, align 1
  %20 = load i16, ptr %arrayidx.i, align 2
  %conv3.i.i = trunc i16 %20 to i8
  %incdec.ptr4.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv3.i.i, ptr %incdec.ptr.i.i, align 1
  %arrayidx.1.i.i = getelementptr i16, ptr %arrayidx.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.1.i.i, align 2
  %24 = lshr i16 %23, 8
  %conv1.1.i.i = trunc i16 %24 to i8
  %incdec.ptr.1.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.1.i.i, ptr %incdec.ptr4.i.i, align 1
  %26 = load i16, ptr %arrayidx.1.i.i, align 2
  %conv3.1.i.i = trunc i16 %26 to i8
  %incdec.ptr4.1.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv3.1.i.i, ptr %incdec.ptr.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr i16, ptr %arrayidx.i, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.2.i.i, align 2
  %30 = lshr i16 %29, 8
  %conv1.2.i.i = trunc i16 %30 to i8
  %incdec.ptr.2.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %incdec.ptr4.1.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.2.i.i, ptr %incdec.ptr4.1.i.i, align 1
  %32 = load i16, ptr %arrayidx.2.i.i, align 2
  %conv3.2.i.i = trunc i16 %32 to i8
  %33 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv3.2.i.i, ptr %incdec.ptr.2.i.i, align 1
  %arrayidx3.i = getelementptr i16, ptr %in, i32 45
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.i, align 2
  %36 = trunc i16 %35 to i8
  %conv5.i = and i8 %36, 31
  %et0phyaddr.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 6
  %37 = ptrtoint ptr %et0phyaddr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv5.i, ptr %et0phyaddr.i, align 2
  %38 = load i16, ptr %arrayidx3.i, align 2
  %39 = lshr i16 %38, 5
  %40 = trunc i16 %39 to i8
  %conv10.i = and i8 %40, 31
  %et1phyaddr.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 7
  %41 = ptrtoint ptr %et1phyaddr.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10.i, ptr %et1phyaddr.i, align 1
  %arrayidx11.i = getelementptr i16, ptr %in, i32 33
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx11.i, align 2
  %board_rev.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 13
  %44 = ptrtoint ptr %board_rev.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %board_rev.i, align 2
  %arrayidx16.i = getelementptr i16, ptr %in, i32 2
  %45 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx16.i, align 2
  %board_type.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 15
  %47 = ptrtoint ptr %board_type.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %board_type.i, align 2
  %.725.i = select i1 %cmp.i, i32 41, i32 34
  %.726.i = select i1 %cmp.i, i32 34, i32 37
  %.727.i = select i1 %cmp.i, i32 35, i32 38
  %.728.i = select i1 %cmp.i, i32 36, i32 39
  %.729.i = select i1 %cmp.i, i32 37, i32 40
  %arrayidx60.i = getelementptr i16, ptr %in, i32 %.725.i
  %48 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx60.i, align 2
  %50 = lshr i16 %49, 8
  %conv64.i = trunc i16 %50 to i8
  %alpha265.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 17
  %51 = ptrtoint ptr %alpha265.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv64.i, ptr %alpha265.i, align 1
  %52 = load i16, ptr %arrayidx60.i, align 2
  %conv71.i = trunc i16 %52 to i8
  %arrayidx73.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 17, i32 1
  %53 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv71.i, ptr %arrayidx73.i, align 1
  %arrayidx74.i = getelementptr i16, ptr %in, i32 %.726.i
  %54 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx74.i, align 2
  %boardflags_lo79.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 70
  %56 = ptrtoint ptr %boardflags_lo79.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %boardflags_lo79.i, align 4
  %arrayidx80.i = getelementptr i16, ptr %in, i32 %.727.i
  %57 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx80.i, align 2
  %boardflags_hi85.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 71
  %59 = ptrtoint ptr %boardflags_hi85.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %boardflags_hi85.i, align 2
  %arrayidx86.i = getelementptr i16, ptr %in, i32 %.728.i
  %60 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx86.i, align 2
  %boardflags2_lo91.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 72
  %62 = ptrtoint ptr %boardflags2_lo91.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %boardflags2_lo91.i, align 4
  %arrayidx92.i = getelementptr i16, ptr %in, i32 %.729.i
  %63 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %.sink.i = load i16, ptr %arrayidx92.i, align 2
  %64 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 73
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %.sink.i, ptr %64, align 2
  %arrayidx99.i = getelementptr i16, ptr %in, i32 46
  %66 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx99.i, align 2
  %68 = lshr i16 %67, 8
  %conv103.i = trunc i16 %68 to i8
  %ant_available_a.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 20
  %69 = ptrtoint ptr %ant_available_a.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv103.i, ptr %ant_available_a.i, align 1
  %70 = load i16, ptr %arrayidx99.i, align 2
  %conv108.i = trunc i16 %70 to i8
  %ant_available_bg.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 21
  %71 = ptrtoint ptr %ant_available_bg.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv108.i, ptr %ant_available_bg.i, align 2
  %arrayidx109.i = getelementptr i16, ptr %in, i32 64
  %72 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx109.i, align 2
  %conv113.i = trunc i16 %73 to i8
  %maxpwr_bg.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 38
  %74 = ptrtoint ptr %maxpwr_bg.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv113.i, ptr %maxpwr_bg.i, align 4
  %75 = load i16, ptr %arrayidx109.i, align 2
  %76 = lshr i16 %75, 8
  %conv118.i = trunc i16 %76 to i8
  %itssi_bg.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 43
  %77 = ptrtoint ptr %itssi_bg.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv118.i, ptr %itssi_bg.i, align 1
  %arrayidx119.i = getelementptr i16, ptr %in, i32 69
  %78 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx119.i, align 2
  %conv123.i = trunc i16 %79 to i8
  %maxpwr_a.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 40
  %80 = ptrtoint ptr %maxpwr_a.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv123.i, ptr %maxpwr_a.i, align 2
  %81 = load i16, ptr %arrayidx119.i, align 2
  %82 = lshr i16 %81, 8
  %conv128.i = trunc i16 %82 to i8
  %itssi_a.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 42
  %83 = ptrtoint ptr %itssi_a.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv128.i, ptr %itssi_a.i, align 4
  %. = select i1 %cmp.i, i32 43, i32 59
  %.119 = select i1 %cmp.i, i32 44, i32 60
  %arrayidx134.i = getelementptr i16, ptr %in, i32 %.
  %84 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx134.i, align 2
  %conv138.i = trunc i16 %85 to i8
  %gpio0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 34
  %86 = ptrtoint ptr %gpio0.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv138.i, ptr %gpio0.i, align 4
  %87 = load i16, ptr %arrayidx134.i, align 2
  %88 = lshr i16 %87, 8
  %conv143.i = trunc i16 %88 to i8
  %gpio1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 35
  %89 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv143.i, ptr %gpio1.i, align 1
  %arrayidx144.i = getelementptr i16, ptr %in, i32 %.119
  %90 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx144.i, align 2
  %conv148.i = trunc i16 %91 to i8
  %gpio2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 36
  %92 = ptrtoint ptr %gpio2.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv148.i, ptr %gpio2.i, align 2
  %93 = load i16, ptr %arrayidx144.i, align 2
  %94 = lshr i16 %93, 8
  %conv153.i = trunc i16 %94 to i8
  %95 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 37
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv153.i, ptr %95, align 1
  %arrayidx.i671.i = getelementptr i16, ptr %in, i32 47
  %97 = ptrtoint ptr %arrayidx.i671.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i671.i, align 2
  %and25.i672.i = and i16 %98, 255
  %conv4.i673.i = trunc i16 %98 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and25.i672.i)
  %cmp.i674.i = icmp eq i16 %and25.i672.i, 255
  %spec.store.select.i675.i = select i1 %cmp.i674.i, i8 2, i8 %conv4.i673.i
  %or.i.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i675.i, i8 %spec.store.select.i675.i, i8 2) #8
  %antenna_gain.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75
  %99 = ptrtoint ptr %antenna_gain.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %or.i.i, ptr %antenna_gain.i, align 4
  %100 = ptrtoint ptr %arrayidx.i671.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.i671.i, align 2
  %102 = lshr i16 %101, 8
  %conv4.i627.i = trunc i16 %102 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %102)
  %cmp.i629.i = icmp eq i16 %102, 255
  %spec.store.select.i630.i = select i1 %cmp.i629.i, i8 2, i8 %conv4.i627.i
  %or.i634.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i630.i, i8 %spec.store.select.i630.i, i8 2) #8
  %a1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 1
  %103 = ptrtoint ptr %a1.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %or.i634.i, ptr %a1.i, align 1
  %arrayidx.i638.i = getelementptr i16, ptr %in, i32 48
  %104 = ptrtoint ptr %arrayidx.i638.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i638.i, align 2
  %and25.i639.i = and i16 %105, 255
  %conv4.i641.i = trunc i16 %105 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and25.i639.i)
  %cmp.i643.i = icmp eq i16 %and25.i639.i, 255
  %spec.store.select.i644.i = select i1 %cmp.i643.i, i8 2, i8 %conv4.i641.i
  %or.i648.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i644.i, i8 %spec.store.select.i644.i, i8 2) #8
  %a2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 2
  %106 = ptrtoint ptr %a2.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %or.i648.i, ptr %a2.i, align 2
  %107 = ptrtoint ptr %arrayidx.i638.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx.i638.i, align 2
  %109 = lshr i16 %108, 8
  %conv4.i656.i = trunc i16 %109 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %109)
  %cmp.i658.i = icmp eq i16 %109, 255
  %spec.store.select.i659.i = select i1 %cmp.i658.i, i8 2, i8 %conv4.i656.i
  %or.i663.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i659.i, i8 %spec.store.select.i659.i, i8 2) #8
  %a3.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 3
  %110 = ptrtoint ptr %a3.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %or.i663.i, ptr %a3.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb33
  %i.0669.i = phi i32 [ 0, %sw.bb33 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx192.i = getelementptr [4 x i16], ptr @sprom_extract_r45.pwr_info_offset, i32 0, i32 %i.0669.i
  %111 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx192.i, align 2
  %conv193.i = zext i16 %112 to i32
  %div194605.i = lshr i32 %conv193.i, 1
  %arrayidx195.i = getelementptr i16, ptr %in, i32 %div194605.i
  %113 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx195.i, align 2
  %115 = lshr i16 %114, 8
  %conv199.i = trunc i16 %115 to i8
  %arrayidx200.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i
  %116 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv199.i, ptr %arrayidx200.i, align 2
  %117 = load i16, ptr %arrayidx195.i, align 2
  %conv208.i = trunc i16 %117 to i8
  %maxpwr_2g.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 2
  %118 = ptrtoint ptr %maxpwr_2g.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv208.i, ptr %maxpwr_2g.i, align 2
  %add212.i = add nuw nsw i32 %conv193.i, 2
  %div213606.i = lshr i32 %add212.i, 1
  %arrayidx214.i = getelementptr i16, ptr %in, i32 %div213606.i
  %119 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx214.i, align 2
  %pa_2g.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 6
  %121 = ptrtoint ptr %pa_2g.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %pa_2g.i, align 2
  %add223.i = add nuw nsw i32 %conv193.i, 4
  %div224607.i = lshr i32 %add223.i, 1
  %arrayidx225.i = getelementptr i16, ptr %in, i32 %div224607.i
  %122 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx225.i, align 2
  %arrayidx233.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 6, i32 1
  %124 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %arrayidx233.i, align 2
  %add235.i = add nuw nsw i32 %conv193.i, 6
  %div236608.i = lshr i32 %add235.i, 1
  %arrayidx237.i = getelementptr i16, ptr %in, i32 %div236608.i
  %125 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx237.i, align 2
  %arrayidx245.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 6, i32 2
  %127 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %arrayidx245.i, align 2
  %add247.i = add nuw nsw i32 %conv193.i, 8
  %div248609.i = lshr i32 %add247.i, 1
  %arrayidx249.i = getelementptr i16, ptr %in, i32 %div248609.i
  %128 = ptrtoint ptr %arrayidx249.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx249.i, align 2
  %arrayidx257.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 6, i32 3
  %130 = ptrtoint ptr %arrayidx257.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %arrayidx257.i, align 2
  %add259.i = add nuw nsw i32 %conv193.i, 10
  %div260610.i = lshr i32 %add259.i, 1
  %arrayidx261.i = getelementptr i16, ptr %in, i32 %div260610.i
  %131 = ptrtoint ptr %arrayidx261.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx261.i, align 2
  %133 = lshr i16 %132, 8
  %conv265.i = trunc i16 %133 to i8
  %itssi_5g.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 1
  %134 = ptrtoint ptr %itssi_5g.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv265.i, ptr %itssi_5g.i, align 1
  %135 = load i16, ptr %arrayidx261.i, align 2
  %conv275.i = trunc i16 %135 to i8
  %maxpwr_5g.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 4
  %136 = ptrtoint ptr %maxpwr_5g.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv275.i, ptr %maxpwr_5g.i, align 2
  %add279.i = add nuw nsw i32 %conv193.i, 12
  %div280611.i = lshr i32 %add279.i, 1
  %arrayidx281.i = getelementptr i16, ptr %in, i32 %div280611.i
  %137 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx281.i, align 2
  %conv285.i = trunc i16 %138 to i8
  %maxpwr_5gh.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 5
  %139 = ptrtoint ptr %maxpwr_5gh.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv285.i, ptr %maxpwr_5gh.i, align 1
  %140 = load i16, ptr %arrayidx281.i, align 2
  %141 = lshr i16 %140, 8
  %conv295.i = trunc i16 %141 to i8
  %maxpwr_5gl.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 3
  %142 = ptrtoint ptr %maxpwr_5gl.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv295.i, ptr %maxpwr_5gl.i, align 1
  %add299.i = add nuw nsw i32 %conv193.i, 22
  %div300612.i = lshr i32 %add299.i, 1
  %arrayidx301.i = getelementptr i16, ptr %in, i32 %div300612.i
  %143 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx301.i, align 2
  %pa_5gl.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 7
  %145 = ptrtoint ptr %pa_5gl.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %pa_5gl.i, align 2
  %add310.i = add nuw nsw i32 %conv193.i, 24
  %div311613.i = lshr i32 %add310.i, 1
  %arrayidx312.i = getelementptr i16, ptr %in, i32 %div311613.i
  %146 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx312.i, align 2
  %arrayidx320.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 7, i32 1
  %148 = ptrtoint ptr %arrayidx320.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %arrayidx320.i, align 2
  %add322.i = add nuw nsw i32 %conv193.i, 26
  %div323614.i = lshr i32 %add322.i, 1
  %arrayidx324.i = getelementptr i16, ptr %in, i32 %div323614.i
  %149 = ptrtoint ptr %arrayidx324.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx324.i, align 2
  %arrayidx332.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 7, i32 2
  %151 = ptrtoint ptr %arrayidx332.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %arrayidx332.i, align 2
  %add334.i = add nuw nsw i32 %conv193.i, 28
  %div335615.i = lshr i32 %add334.i, 1
  %arrayidx336.i = getelementptr i16, ptr %in, i32 %div335615.i
  %152 = ptrtoint ptr %arrayidx336.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx336.i, align 2
  %arrayidx344.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 7, i32 3
  %154 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %arrayidx344.i, align 2
  %add346.i = add nuw nsw i32 %conv193.i, 14
  %div347616.i = lshr i32 %add346.i, 1
  %arrayidx348.i = getelementptr i16, ptr %in, i32 %div347616.i
  %155 = ptrtoint ptr %arrayidx348.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx348.i, align 2
  %pa_5g.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 8
  %157 = ptrtoint ptr %pa_5g.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %pa_5g.i, align 2
  %add357.i = add nuw nsw i32 %conv193.i, 16
  %div358617.i = lshr i32 %add357.i, 1
  %arrayidx359.i = getelementptr i16, ptr %in, i32 %div358617.i
  %158 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx359.i, align 2
  %arrayidx367.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 8, i32 1
  %160 = ptrtoint ptr %arrayidx367.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %arrayidx367.i, align 2
  %add369.i = add nuw nsw i32 %conv193.i, 18
  %div370618.i = lshr i32 %add369.i, 1
  %arrayidx371.i = getelementptr i16, ptr %in, i32 %div370618.i
  %161 = ptrtoint ptr %arrayidx371.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx371.i, align 2
  %arrayidx379.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 8, i32 2
  %163 = ptrtoint ptr %arrayidx379.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %arrayidx379.i, align 2
  %add381.i = add nuw nsw i32 %conv193.i, 20
  %div382619.i = lshr i32 %add381.i, 1
  %arrayidx383.i = getelementptr i16, ptr %in, i32 %div382619.i
  %164 = ptrtoint ptr %arrayidx383.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx383.i, align 2
  %arrayidx391.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 8, i32 3
  %166 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %arrayidx391.i, align 2
  %add393.i = add nuw nsw i32 %conv193.i, 30
  %div394620.i = lshr i32 %add393.i, 1
  %arrayidx395.i = getelementptr i16, ptr %in, i32 %div394620.i
  %167 = ptrtoint ptr %arrayidx395.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx395.i, align 2
  %pa_5gh.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 9
  %169 = ptrtoint ptr %pa_5gh.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %pa_5gh.i, align 2
  %add404.i = add nuw nsw i32 %conv193.i, 32
  %div405621.i = lshr i32 %add404.i, 1
  %arrayidx406.i = getelementptr i16, ptr %in, i32 %div405621.i
  %170 = ptrtoint ptr %arrayidx406.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %arrayidx406.i, align 2
  %arrayidx414.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 9, i32 1
  %172 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %arrayidx414.i, align 2
  %add416.i = add nuw nsw i32 %conv193.i, 34
  %div417622.i = lshr i32 %add416.i, 1
  %arrayidx418.i = getelementptr i16, ptr %in, i32 %div417622.i
  %173 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %arrayidx418.i, align 2
  %arrayidx426.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 9, i32 2
  %175 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %arrayidx426.i, align 2
  %add428.i = add nuw nsw i32 %conv193.i, 36
  %div429623.i = lshr i32 %add428.i, 1
  %arrayidx430.i = getelementptr i16, ptr %in, i32 %div429623.i
  %176 = ptrtoint ptr %arrayidx430.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx430.i, align 2
  %arrayidx438.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.0669.i, i32 9, i32 3
  %178 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %arrayidx438.i, align 2
  %inc.i = add nuw nsw i32 %i.0669.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %sprom_extract_r45.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sprom_extract_r45.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i667.i = getelementptr i16, ptr %in, i32 49
  %179 = ptrtoint ptr %arrayidx.i667.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx.i667.i, align 2
  %conv1.i668.i = trunc i16 %180 to i8
  %txpid2g.i.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 48
  %181 = ptrtoint ptr %txpid2g.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv1.i668.i, ptr %txpid2g.i.i, align 2
  %182 = load i16, ptr %arrayidx.i667.i, align 2
  %183 = lshr i16 %182, 8
  %conv7.i.i = trunc i16 %183 to i8
  %arrayidx9.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 1
  %184 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv7.i.i, ptr %arrayidx9.i.i, align 1
  %arrayidx10.i.i = getelementptr i16, ptr %in, i32 50
  %185 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %arrayidx10.i.i, align 2
  %conv14.i.i = trunc i16 %186 to i8
  %arrayidx16.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 2
  %187 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv14.i.i, ptr %arrayidx16.i.i, align 2
  %188 = load i16, ptr %arrayidx10.i.i, align 2
  %189 = lshr i16 %188, 8
  %conv21.i.i = trunc i16 %189 to i8
  %arrayidx23.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 3
  %190 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv21.i.i, ptr %arrayidx23.i.i, align 1
  %arrayidx24.i.i = getelementptr i16, ptr %in, i32 53
  %191 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %arrayidx24.i.i, align 2
  %conv28.i.i = trunc i16 %192 to i8
  %txpid5gl.i.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 49
  %193 = ptrtoint ptr %txpid5gl.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv28.i.i, ptr %txpid5gl.i.i, align 2
  %194 = load i16, ptr %arrayidx24.i.i, align 2
  %195 = lshr i16 %194, 8
  %conv34.i.i = trunc i16 %195 to i8
  %arrayidx36.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 1
  %196 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv34.i.i, ptr %arrayidx36.i.i, align 1
  %arrayidx37.i.i = getelementptr i16, ptr %in, i32 54
  %197 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx37.i.i, align 2
  %conv41.i.i = trunc i16 %198 to i8
  %arrayidx43.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 2
  %199 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv41.i.i, ptr %arrayidx43.i.i, align 2
  %200 = load i16, ptr %arrayidx37.i.i, align 2
  %201 = lshr i16 %200, 8
  %conv48.i.i = trunc i16 %201 to i8
  %arrayidx50.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 3
  %202 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv48.i.i, ptr %arrayidx50.i.i, align 1
  %arrayidx51.i.i = getelementptr i16, ptr %in, i32 51
  %203 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx51.i.i, align 2
  %conv55.i.i = trunc i16 %204 to i8
  %txpid5g.i.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 50
  %205 = ptrtoint ptr %txpid5g.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv55.i.i, ptr %txpid5g.i.i, align 2
  %206 = load i16, ptr %arrayidx51.i.i, align 2
  %207 = lshr i16 %206, 8
  %conv61.i.i = trunc i16 %207 to i8
  %arrayidx63.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 1
  %208 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv61.i.i, ptr %arrayidx63.i.i, align 1
  %arrayidx64.i.i = getelementptr i16, ptr %in, i32 52
  %209 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx64.i.i, align 2
  %conv68.i.i = trunc i16 %210 to i8
  %arrayidx70.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 2
  %211 = ptrtoint ptr %arrayidx70.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv68.i.i, ptr %arrayidx70.i.i, align 2
  %212 = load i16, ptr %arrayidx64.i.i, align 2
  %213 = lshr i16 %212, 8
  %conv75.i.i = trunc i16 %213 to i8
  %arrayidx77.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 3
  %214 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv75.i.i, ptr %arrayidx77.i.i, align 1
  %arrayidx78.i.i = getelementptr i16, ptr %in, i32 55
  %215 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx78.i.i, align 2
  %conv82.i.i = trunc i16 %216 to i8
  %txpid5gh.i.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 51
  %217 = ptrtoint ptr %txpid5gh.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv82.i.i, ptr %txpid5gh.i.i, align 2
  %218 = load i16, ptr %arrayidx78.i.i, align 2
  %219 = lshr i16 %218, 8
  %conv88.i.i = trunc i16 %219 to i8
  %arrayidx90.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 1
  %220 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv88.i.i, ptr %arrayidx90.i.i, align 1
  %arrayidx91.i.i = getelementptr i16, ptr %in, i32 56
  %221 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx91.i.i, align 2
  %conv95.i.i = trunc i16 %222 to i8
  %arrayidx97.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 2
  %223 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %conv95.i.i, ptr %arrayidx97.i.i, align 2
  %224 = load i16, ptr %arrayidx91.i.i, align 2
  %225 = lshr i16 %224, 8
  %conv102.i.i = trunc i16 %225 to i8
  %arrayidx104.i.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 3
  %226 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv102.i.i, ptr %arrayidx104.i.i, align 1
  br label %sw.epilog

sprom_extract_antgain.exit1273.i:                 ; preds = %if.end30
  %il0mac.i4 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 2
  %arrayidx.i5 = getelementptr i16, ptr %in, i32 70
  %227 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx.i5, align 2
  %229 = lshr i16 %228, 8
  %conv1.i.i6 = trunc i16 %229 to i8
  %incdec.ptr.i.i7 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 1
  %230 = ptrtoint ptr %il0mac.i4 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv1.i.i6, ptr %il0mac.i4, align 1
  %231 = load i16, ptr %arrayidx.i5, align 2
  %conv3.i.i8 = trunc i16 %231 to i8
  %incdec.ptr4.i.i9 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 2
  %232 = ptrtoint ptr %incdec.ptr.i.i7 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv3.i.i8, ptr %incdec.ptr.i.i7, align 1
  %arrayidx.1.i.i10 = getelementptr i16, ptr %in, i32 71
  %233 = ptrtoint ptr %arrayidx.1.i.i10 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %arrayidx.1.i.i10, align 2
  %235 = lshr i16 %234, 8
  %conv1.1.i.i11 = trunc i16 %235 to i8
  %incdec.ptr.1.i.i12 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 3
  %236 = ptrtoint ptr %incdec.ptr4.i.i9 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv1.1.i.i11, ptr %incdec.ptr4.i.i9, align 1
  %237 = load i16, ptr %arrayidx.1.i.i10, align 2
  %conv3.1.i.i13 = trunc i16 %237 to i8
  %incdec.ptr4.1.i.i14 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 4
  %238 = ptrtoint ptr %incdec.ptr.1.i.i12 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv3.1.i.i13, ptr %incdec.ptr.1.i.i12, align 1
  %arrayidx.2.i.i15 = getelementptr i16, ptr %in, i32 72
  %239 = ptrtoint ptr %arrayidx.2.i.i15 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx.2.i.i15, align 2
  %241 = lshr i16 %240, 8
  %conv1.2.i.i16 = trunc i16 %241 to i8
  %incdec.ptr.2.i.i17 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 5
  %242 = ptrtoint ptr %incdec.ptr4.1.i.i14 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv1.2.i.i16, ptr %incdec.ptr4.1.i.i14, align 1
  %243 = load i16, ptr %arrayidx.2.i.i15, align 2
  %conv3.2.i.i18 = trunc i16 %243 to i8
  %244 = ptrtoint ptr %incdec.ptr.2.i.i17 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv3.2.i.i18, ptr %incdec.ptr.2.i.i17, align 1
  %arrayidx1.i = getelementptr i16, ptr %in, i32 65
  %245 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx1.i, align 2
  %board_rev.i19 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 13
  %247 = ptrtoint ptr %board_rev.i19 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %246, ptr %board_rev.i19, align 2
  %arrayidx3.i20 = getelementptr i16, ptr %in, i32 2
  %248 = ptrtoint ptr %arrayidx3.i20 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %arrayidx3.i20, align 2
  %board_type.i21 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 15
  %250 = ptrtoint ptr %board_type.i21 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %board_type.i21, align 2
  %arrayidx8.i = getelementptr i16, ptr %in, i32 73
  %251 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx8.i, align 2
  %253 = lshr i16 %252, 8
  %conv12.i = trunc i16 %253 to i8
  %alpha2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 17
  %254 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv12.i, ptr %alpha2.i, align 1
  %255 = load i16, ptr %arrayidx8.i, align 2
  %conv18.i = trunc i16 %255 to i8
  %arrayidx20.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 17, i32 1
  %256 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %arrayidx21.i = getelementptr i16, ptr %in, i32 66
  %257 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %arrayidx21.i, align 2
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 70
  %259 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %boardflags_lo.i, align 4
  %arrayidx26.i = getelementptr i16, ptr %in, i32 67
  %260 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %arrayidx26.i, align 2
  %boardflags_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 71
  %262 = ptrtoint ptr %boardflags_hi.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %261, ptr %boardflags_hi.i, align 2
  %arrayidx31.i = getelementptr i16, ptr %in, i32 68
  %263 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %arrayidx31.i, align 2
  %boardflags2_lo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 72
  %265 = ptrtoint ptr %boardflags2_lo.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %264, ptr %boardflags2_lo.i, align 4
  %arrayidx36.i = getelementptr i16, ptr %in, i32 69
  %266 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %arrayidx36.i, align 2
  %boardflags2_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 73
  %268 = ptrtoint ptr %boardflags2_hi.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %boardflags2_hi.i, align 2
  %arrayidx41.i = getelementptr i16, ptr %in, i32 78
  %269 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx41.i, align 2
  %271 = lshr i16 %270, 8
  %conv45.i = trunc i16 %271 to i8
  %ant_available_a.i22 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 20
  %272 = ptrtoint ptr %ant_available_a.i22 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv45.i, ptr %ant_available_a.i22, align 1
  %273 = load i16, ptr %arrayidx41.i, align 2
  %conv50.i = trunc i16 %273 to i8
  %ant_available_bg.i23 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 21
  %274 = ptrtoint ptr %ant_available_bg.i23 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv50.i, ptr %ant_available_bg.i23, align 2
  %arrayidx51.i = getelementptr i16, ptr %in, i32 96
  %275 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %arrayidx51.i, align 2
  %conv55.i = trunc i16 %276 to i8
  %maxpwr_bg.i24 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 38
  %277 = ptrtoint ptr %maxpwr_bg.i24 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv55.i, ptr %maxpwr_bg.i24, align 4
  %278 = load i16, ptr %arrayidx51.i, align 2
  %279 = lshr i16 %278, 8
  %conv60.i = trunc i16 %279 to i8
  %itssi_bg.i25 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 43
  %280 = ptrtoint ptr %itssi_bg.i25 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv60.i, ptr %itssi_bg.i25, align 1
  %arrayidx61.i = getelementptr i16, ptr %in, i32 100
  %281 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx61.i, align 2
  %conv65.i = trunc i16 %282 to i8
  %maxpwr_a.i26 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 40
  %283 = ptrtoint ptr %maxpwr_a.i26 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv65.i, ptr %maxpwr_a.i26, align 2
  %284 = load i16, ptr %arrayidx61.i, align 2
  %285 = lshr i16 %284, 8
  %conv70.i = trunc i16 %285 to i8
  %itssi_a.i27 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 42
  %286 = ptrtoint ptr %itssi_a.i27 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %conv70.i, ptr %itssi_a.i27, align 4
  %arrayidx71.i = getelementptr i16, ptr %in, i32 101
  %287 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %arrayidx71.i, align 2
  %conv75.i = trunc i16 %288 to i8
  %maxpwr_ah.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 41
  %289 = ptrtoint ptr %maxpwr_ah.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %conv75.i, ptr %maxpwr_ah.i, align 1
  %290 = load i16, ptr %arrayidx71.i, align 2
  %291 = lshr i16 %290, 8
  %conv80.i = trunc i16 %291 to i8
  %maxpwr_al.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 39
  %292 = ptrtoint ptr %maxpwr_al.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv80.i, ptr %maxpwr_al.i, align 1
  %arrayidx81.i = getelementptr i16, ptr %in, i32 75
  %293 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %arrayidx81.i, align 2
  %conv85.i = trunc i16 %294 to i8
  %gpio0.i28 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 34
  %295 = ptrtoint ptr %gpio0.i28 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv85.i, ptr %gpio0.i28, align 4
  %296 = load i16, ptr %arrayidx81.i, align 2
  %297 = lshr i16 %296, 8
  %conv90.i = trunc i16 %297 to i8
  %gpio1.i29 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 35
  %298 = ptrtoint ptr %gpio1.i29 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv90.i, ptr %gpio1.i29, align 1
  %arrayidx91.i = getelementptr i16, ptr %in, i32 76
  %299 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %arrayidx91.i, align 2
  %conv95.i = trunc i16 %300 to i8
  %gpio2.i30 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 36
  %301 = ptrtoint ptr %gpio2.i30 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %conv95.i, ptr %gpio2.i30, align 2
  %302 = load i16, ptr %arrayidx91.i, align 2
  %303 = lshr i16 %302, 8
  %conv100.i = trunc i16 %303 to i8
  %gpio3.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 37
  %304 = ptrtoint ptr %gpio3.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv100.i, ptr %gpio3.i, align 1
  %arrayidx101.i = getelementptr i16, ptr %in, i32 84
  %305 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %arrayidx101.i, align 2
  %conv105.i = trunc i16 %306 to i8
  %tri2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 44
  %307 = ptrtoint ptr %tri2g.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %conv105.i, ptr %tri2g.i, align 2
  %308 = load i16, ptr %arrayidx101.i, align 2
  %309 = lshr i16 %308, 8
  %conv110.i = trunc i16 %309 to i8
  %tri5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 46
  %310 = ptrtoint ptr %tri5g.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv110.i, ptr %tri5g.i, align 4
  %arrayidx111.i = getelementptr i16, ptr %in, i32 85
  %311 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %arrayidx111.i, align 2
  %conv115.i = trunc i16 %312 to i8
  %tri5gl.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 45
  %313 = ptrtoint ptr %tri5gl.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %conv115.i, ptr %tri5gl.i, align 1
  %314 = load i16, ptr %arrayidx111.i, align 2
  %315 = lshr i16 %314, 8
  %conv120.i = trunc i16 %315 to i8
  %tri5gh.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 47
  %316 = ptrtoint ptr %tri5gh.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv120.i, ptr %tri5gh.i, align 1
  %arrayidx121.i = getelementptr i16, ptr %in, i32 86
  %317 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %arrayidx121.i, align 2
  %conv125.i = trunc i16 %318 to i8
  %rxpo2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 52
  %319 = ptrtoint ptr %rxpo2g.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv125.i, ptr %rxpo2g.i, align 2
  %320 = load i16, ptr %arrayidx121.i, align 2
  %321 = lshr i16 %320, 8
  %conv130.i = trunc i16 %321 to i8
  %rxpo5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 53
  %322 = ptrtoint ptr %rxpo5g.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv130.i, ptr %rxpo5g.i, align 1
  %arrayidx131.i = getelementptr i16, ptr %in, i32 82
  %323 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %arrayidx131.i, align 2
  %325 = trunc i16 %324 to i8
  %conv135.i = and i8 %325, 15
  %rssismf2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 56
  %326 = ptrtoint ptr %rssismf2g.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %conv135.i, ptr %rssismf2g.i, align 2
  %327 = load i16, ptr %arrayidx131.i, align 2
  %328 = trunc i16 %327 to i8
  %329 = lshr i8 %328, 4
  %rssismc2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 55
  %330 = ptrtoint ptr %rssismc2g.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %rssismc2g.i, align 1
  %331 = load i16, ptr %arrayidx131.i, align 2
  %332 = lshr i16 %331, 8
  %333 = trunc i16 %332 to i8
  %conv145.i = and i8 %333, 7
  %rssisav2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 54
  %334 = ptrtoint ptr %rssisav2g.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %conv145.i, ptr %rssisav2g.i, align 4
  %335 = load i16, ptr %arrayidx131.i, align 2
  %336 = lshr i16 %335, 11
  %337 = trunc i16 %336 to i8
  %conv150.i = and i8 %337, 3
  %bxa2g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 57
  %338 = ptrtoint ptr %bxa2g.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %conv150.i, ptr %bxa2g.i, align 1
  %arrayidx151.i = getelementptr i16, ptr %in, i32 83
  %339 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %arrayidx151.i, align 2
  %341 = trunc i16 %340 to i8
  %conv155.i = and i8 %341, 15
  %rssismf5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 60
  %342 = ptrtoint ptr %rssismf5g.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %conv155.i, ptr %rssismf5g.i, align 2
  %343 = load i16, ptr %arrayidx151.i, align 2
  %344 = trunc i16 %343 to i8
  %345 = lshr i8 %344, 4
  %rssismc5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 59
  %346 = ptrtoint ptr %rssismc5g.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %345, ptr %rssismc5g.i, align 1
  %347 = load i16, ptr %arrayidx151.i, align 2
  %348 = lshr i16 %347, 8
  %349 = trunc i16 %348 to i8
  %conv165.i31 = and i8 %349, 7
  %rssisav5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 58
  %350 = ptrtoint ptr %rssisav5g.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %conv165.i31, ptr %rssisav5g.i, align 4
  %351 = load i16, ptr %arrayidx151.i, align 2
  %352 = lshr i16 %351, 11
  %353 = trunc i16 %352 to i8
  %conv170.i = and i8 %353, 3
  %bxa5g.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 61
  %354 = ptrtoint ptr %bxa5g.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %conv170.i, ptr %bxa5g.i, align 1
  %arrayidx171.i = getelementptr i16, ptr %in, i32 97
  %355 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx171.i, align 2
  %pa0b0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 22
  %357 = ptrtoint ptr %pa0b0.i to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %356, ptr %pa0b0.i, align 4
  %arrayidx176.i = getelementptr i16, ptr %in, i32 98
  %358 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %arrayidx176.i, align 2
  %pa0b1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 23
  %360 = ptrtoint ptr %pa0b1.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %359, ptr %pa0b1.i, align 2
  %arrayidx181.i = getelementptr i16, ptr %in, i32 99
  %361 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %arrayidx181.i, align 2
  %pa0b2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 24
  %363 = ptrtoint ptr %pa0b2.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 %362, ptr %pa0b2.i, align 4
  %arrayidx186.i = getelementptr i16, ptr %in, i32 102
  %364 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %arrayidx186.i, align 2
  %pa1b0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 25
  %366 = ptrtoint ptr %pa1b0.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 %365, ptr %pa1b0.i, align 2
  %arrayidx191.i = getelementptr i16, ptr %in, i32 103
  %367 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %arrayidx191.i, align 2
  %pa1b1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 26
  %369 = ptrtoint ptr %pa1b1.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %368, ptr %pa1b1.i, align 4
  %arrayidx196.i = getelementptr i16, ptr %in, i32 104
  %370 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %arrayidx196.i, align 2
  %pa1b2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 27
  %372 = ptrtoint ptr %pa1b2.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 %371, ptr %pa1b2.i, align 2
  %arrayidx201.i = getelementptr i16, ptr %in, i32 105
  %373 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %arrayidx201.i, align 2
  %pa1lob0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 28
  %375 = ptrtoint ptr %pa1lob0.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 %374, ptr %pa1lob0.i, align 4
  %arrayidx206.i = getelementptr i16, ptr %in, i32 106
  %376 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %arrayidx206.i, align 2
  %pa1lob1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 29
  %378 = ptrtoint ptr %pa1lob1.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %377, ptr %pa1lob1.i, align 2
  %arrayidx211.i = getelementptr i16, ptr %in, i32 107
  %379 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %arrayidx211.i, align 2
  %pa1lob2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 30
  %381 = ptrtoint ptr %pa1lob2.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %380, ptr %pa1lob2.i, align 4
  %arrayidx216.i = getelementptr i16, ptr %in, i32 108
  %382 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %arrayidx216.i, align 2
  %pa1hib0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 31
  %384 = ptrtoint ptr %pa1hib0.i to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %383, ptr %pa1hib0.i, align 2
  %arrayidx221.i = getelementptr i16, ptr %in, i32 109
  %385 = ptrtoint ptr %arrayidx221.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %arrayidx221.i, align 2
  %pa1hib1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 32
  %387 = ptrtoint ptr %pa1hib1.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %386, ptr %pa1hib1.i, align 4
  %arrayidx226.i = getelementptr i16, ptr %in, i32 110
  %388 = ptrtoint ptr %arrayidx226.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %arrayidx226.i, align 2
  %pa1hib2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 33
  %390 = ptrtoint ptr %pa1hib2.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %pa1hib2.i, align 2
  %arrayidx231.i = getelementptr i16, ptr %in, i32 160
  %391 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %arrayidx231.i, align 2
  %cck2gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 62
  %393 = ptrtoint ptr %cck2gpo.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %392, ptr %cck2gpo.i, align 4
  %arrayidx236.i = getelementptr i16, ptr %in, i32 162
  %394 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %arrayidx236.i, align 2
  %conv237.i = zext i16 %395 to i32
  %shl.i = shl nuw i32 %conv237.i, 16
  %arrayidx238.i = getelementptr i16, ptr %in, i32 161
  %396 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %arrayidx238.i, align 2
  %conv239.i = zext i16 %397 to i32
  %or.i = or i32 %shl.i, %conv239.i
  %ofdm2gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 63
  %398 = ptrtoint ptr %ofdm2gpo.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %or.i, ptr %ofdm2gpo.i, align 4
  %arrayidx242.i = getelementptr i16, ptr %in, i32 166
  %399 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %arrayidx242.i, align 2
  %conv243.i = zext i16 %400 to i32
  %shl244.i = shl nuw i32 %conv243.i, 16
  %arrayidx245.i32 = getelementptr i16, ptr %in, i32 165
  %401 = ptrtoint ptr %arrayidx245.i32 to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %arrayidx245.i32, align 2
  %conv246.i = zext i16 %402 to i32
  %or247.i = or i32 %shl244.i, %conv246.i
  %ofdm5glpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 64
  %403 = ptrtoint ptr %ofdm5glpo.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %or247.i, ptr %ofdm5glpo.i, align 4
  %arrayidx250.i = getelementptr i16, ptr %in, i32 164
  %404 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %arrayidx250.i, align 2
  %conv251.i = zext i16 %405 to i32
  %shl252.i = shl nuw i32 %conv251.i, 16
  %arrayidx253.i = getelementptr i16, ptr %in, i32 163
  %406 = ptrtoint ptr %arrayidx253.i to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %arrayidx253.i, align 2
  %conv254.i = zext i16 %407 to i32
  %or255.i = or i32 %shl252.i, %conv254.i
  %ofdm5gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 65
  %408 = ptrtoint ptr %ofdm5gpo.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %or255.i, ptr %ofdm5gpo.i, align 4
  %arrayidx258.i = getelementptr i16, ptr %in, i32 168
  %409 = ptrtoint ptr %arrayidx258.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %arrayidx258.i, align 2
  %conv259.i = zext i16 %410 to i32
  %shl260.i = shl nuw i32 %conv259.i, 16
  %arrayidx261.i33 = getelementptr i16, ptr %in, i32 167
  %411 = ptrtoint ptr %arrayidx261.i33 to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %arrayidx261.i33, align 2
  %conv262.i = zext i16 %412 to i32
  %or263.i = or i32 %shl260.i, %conv262.i
  %ofdm5ghpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 66
  %413 = ptrtoint ptr %ofdm5ghpo.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or263.i, ptr %ofdm5ghpo.i, align 4
  %arrayidx.i.i34 = getelementptr i16, ptr %in, i32 79
  %414 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %arrayidx.i.i34, align 2
  %and25.i.i35 = and i16 %415, 255
  %conv4.i.i36 = trunc i16 %415 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and25.i.i35)
  %cmp.i.i37 = icmp eq i16 %and25.i.i35, 255
  %spec.store.select.i.i38 = select i1 %cmp.i.i37, i8 2, i8 %conv4.i.i36
  %or.i.i41 = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i.i38, i8 %spec.store.select.i.i38, i8 2) #8
  %antenna_gain.i42 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75
  %416 = ptrtoint ptr %antenna_gain.i42 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %or.i.i41, ptr %antenna_gain.i42, align 4
  %417 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %arrayidx.i.i34, align 2
  %419 = lshr i16 %418, 8
  %conv4.i1234.i = trunc i16 %419 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %419)
  %cmp.i1236.i = icmp eq i16 %419, 255
  %spec.store.select.i1237.i = select i1 %cmp.i1236.i, i8 2, i8 %conv4.i1234.i
  %or.i1241.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i1237.i, i8 %spec.store.select.i1237.i, i8 2) #8
  %a1.i43 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 1
  %420 = ptrtoint ptr %a1.i43 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %or.i1241.i, ptr %a1.i43, align 1
  %arrayidx.i1245.i = getelementptr i16, ptr %in, i32 80
  %421 = ptrtoint ptr %arrayidx.i1245.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %arrayidx.i1245.i, align 2
  %and25.i1246.i = and i16 %422, 255
  %conv4.i1248.i = trunc i16 %422 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and25.i1246.i)
  %cmp.i1250.i = icmp eq i16 %and25.i1246.i, 255
  %spec.store.select.i1251.i = select i1 %cmp.i1250.i, i8 2, i8 %conv4.i1248.i
  %or.i1255.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i1251.i, i8 %spec.store.select.i1251.i, i8 2) #8
  %a2.i44 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 2
  %423 = ptrtoint ptr %a2.i44 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %or.i1255.i, ptr %a2.i44, align 2
  %424 = ptrtoint ptr %arrayidx.i1245.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %arrayidx.i1245.i, align 2
  %426 = lshr i16 %425, 8
  %conv4.i1263.i = trunc i16 %426 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %426)
  %cmp.i1265.i = icmp eq i16 %426, 255
  %spec.store.select.i1266.i = select i1 %cmp.i1265.i, i8 2, i8 %conv4.i1263.i
  %or.i1270.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i1266.i, i8 %spec.store.select.i1266.i, i8 2) #8
  %a3.i45 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 3
  %427 = ptrtoint ptr %a3.i45 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %or.i1270.i, ptr %a3.i45, align 1
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %sprom_extract_antgain.exit1273.i
  %i.01276.i = phi i32 [ 0, %sprom_extract_antgain.exit1273.i ], [ %inc.i68, %for.body.i70.for.body.i70_crit_edge ]
  %arrayidx276.i = getelementptr [4 x i16], ptr @sprom_extract_r8.pwr_info_offset, i32 0, i32 %i.01276.i
  %428 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %arrayidx276.i, align 2
  %conv277.i = zext i16 %429 to i32
  %div1216.i = lshr i32 %conv277.i, 1
  %arrayidx278.i = getelementptr i16, ptr %in, i32 %div1216.i
  %430 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %arrayidx278.i, align 2
  %432 = lshr i16 %431, 8
  %conv282.i = trunc i16 %432 to i8
  %arrayidx283.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i
  %433 = ptrtoint ptr %arrayidx283.i to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %conv282.i, ptr %arrayidx283.i, align 2
  %434 = load i16, ptr %arrayidx278.i, align 2
  %conv291.i = trunc i16 %434 to i8
  %maxpwr_2g.i46 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 2
  %435 = ptrtoint ptr %maxpwr_2g.i46 to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %conv291.i, ptr %maxpwr_2g.i46, align 2
  %add295.i = add nuw nsw i32 %conv277.i, 2
  %div2961217.i = lshr i32 %add295.i, 1
  %arrayidx297.i = getelementptr i16, ptr %in, i32 %div2961217.i
  %436 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %arrayidx297.i, align 2
  %pa_2g.i47 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 6
  %438 = ptrtoint ptr %pa_2g.i47 to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %437, ptr %pa_2g.i47, align 2
  %add306.i = add nuw nsw i32 %conv277.i, 4
  %div3071218.i = lshr i32 %add306.i, 1
  %arrayidx308.i = getelementptr i16, ptr %in, i32 %div3071218.i
  %439 = ptrtoint ptr %arrayidx308.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %arrayidx308.i, align 2
  %arrayidx316.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 6, i32 1
  %441 = ptrtoint ptr %arrayidx316.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 %440, ptr %arrayidx316.i, align 2
  %add318.i = add nuw nsw i32 %conv277.i, 6
  %div3191219.i = lshr i32 %add318.i, 1
  %arrayidx320.i48 = getelementptr i16, ptr %in, i32 %div3191219.i
  %442 = ptrtoint ptr %arrayidx320.i48 to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %arrayidx320.i48, align 2
  %arrayidx328.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 6, i32 2
  %444 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 %443, ptr %arrayidx328.i, align 2
  %add330.i = add nuw nsw i32 %conv277.i, 8
  %div3311220.i = lshr i32 %add330.i, 1
  %arrayidx332.i49 = getelementptr i16, ptr %in, i32 %div3311220.i
  %445 = ptrtoint ptr %arrayidx332.i49 to i32
  call void @__asan_load2_noabort(i32 %445)
  %446 = load i16, ptr %arrayidx332.i49, align 2
  %447 = lshr i16 %446, 8
  %conv336.i = trunc i16 %447 to i8
  %itssi_5g.i50 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 1
  %448 = ptrtoint ptr %itssi_5g.i50 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %conv336.i, ptr %itssi_5g.i50, align 1
  %449 = load i16, ptr %arrayidx332.i49, align 2
  %conv346.i = trunc i16 %449 to i8
  %maxpwr_5g.i51 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 4
  %450 = ptrtoint ptr %maxpwr_5g.i51 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 %conv346.i, ptr %maxpwr_5g.i51, align 2
  %add350.i = add nuw nsw i32 %conv277.i, 10
  %div3511221.i = lshr i32 %add350.i, 1
  %arrayidx352.i = getelementptr i16, ptr %in, i32 %div3511221.i
  %451 = ptrtoint ptr %arrayidx352.i to i32
  call void @__asan_load2_noabort(i32 %451)
  %452 = load i16, ptr %arrayidx352.i, align 2
  %conv356.i = trunc i16 %452 to i8
  %maxpwr_5gh.i52 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 5
  %453 = ptrtoint ptr %maxpwr_5gh.i52 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %conv356.i, ptr %maxpwr_5gh.i52, align 1
  %454 = load i16, ptr %arrayidx352.i, align 2
  %455 = lshr i16 %454, 8
  %conv366.i = trunc i16 %455 to i8
  %maxpwr_5gl.i53 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 3
  %456 = ptrtoint ptr %maxpwr_5gl.i53 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %conv366.i, ptr %maxpwr_5gl.i53, align 1
  %add370.i = add nuw nsw i32 %conv277.i, 18
  %div3711222.i = lshr i32 %add370.i, 1
  %arrayidx372.i = getelementptr i16, ptr %in, i32 %div3711222.i
  %457 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_load2_noabort(i32 %457)
  %458 = load i16, ptr %arrayidx372.i, align 2
  %pa_5gl.i54 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 7
  %459 = ptrtoint ptr %pa_5gl.i54 to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 %458, ptr %pa_5gl.i54, align 2
  %add381.i55 = add nuw nsw i32 %conv277.i, 20
  %div3821223.i = lshr i32 %add381.i55, 1
  %arrayidx383.i56 = getelementptr i16, ptr %in, i32 %div3821223.i
  %460 = ptrtoint ptr %arrayidx383.i56 to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %arrayidx383.i56, align 2
  %arrayidx391.i57 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 7, i32 1
  %462 = ptrtoint ptr %arrayidx391.i57 to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 %461, ptr %arrayidx391.i57, align 2
  %add393.i58 = add nuw nsw i32 %conv277.i, 22
  %div3941224.i = lshr i32 %add393.i58, 1
  %arrayidx395.i59 = getelementptr i16, ptr %in, i32 %div3941224.i
  %463 = ptrtoint ptr %arrayidx395.i59 to i32
  call void @__asan_load2_noabort(i32 %463)
  %464 = load i16, ptr %arrayidx395.i59, align 2
  %arrayidx403.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 7, i32 2
  %465 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 %464, ptr %arrayidx403.i, align 2
  %add405.i = add nuw nsw i32 %conv277.i, 12
  %div4061225.i = lshr i32 %add405.i, 1
  %arrayidx407.i = getelementptr i16, ptr %in, i32 %div4061225.i
  %466 = ptrtoint ptr %arrayidx407.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %arrayidx407.i, align 2
  %pa_5g.i60 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 8
  %468 = ptrtoint ptr %pa_5g.i60 to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 %467, ptr %pa_5g.i60, align 2
  %add416.i61 = add nuw nsw i32 %conv277.i, 14
  %div4171226.i = lshr i32 %add416.i61, 1
  %arrayidx418.i62 = getelementptr i16, ptr %in, i32 %div4171226.i
  %469 = ptrtoint ptr %arrayidx418.i62 to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %arrayidx418.i62, align 2
  %arrayidx426.i63 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 8, i32 1
  %471 = ptrtoint ptr %arrayidx426.i63 to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 %470, ptr %arrayidx426.i63, align 2
  %add428.i64 = add nuw nsw i32 %conv277.i, 16
  %div4291227.i = lshr i32 %add428.i64, 1
  %arrayidx430.i65 = getelementptr i16, ptr %in, i32 %div4291227.i
  %472 = ptrtoint ptr %arrayidx430.i65 to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %arrayidx430.i65, align 2
  %arrayidx438.i66 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 8, i32 2
  %474 = ptrtoint ptr %arrayidx438.i66 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 %473, ptr %arrayidx438.i66, align 2
  %add440.i = add nuw nsw i32 %conv277.i, 24
  %div4411228.i = lshr i32 %add440.i, 1
  %arrayidx442.i = getelementptr i16, ptr %in, i32 %div4411228.i
  %475 = ptrtoint ptr %arrayidx442.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %arrayidx442.i, align 2
  %pa_5gh.i67 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 9
  %477 = ptrtoint ptr %pa_5gh.i67 to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 %476, ptr %pa_5gh.i67, align 2
  %add451.i = add nuw nsw i32 %conv277.i, 26
  %div4521229.i = lshr i32 %add451.i, 1
  %arrayidx453.i = getelementptr i16, ptr %in, i32 %div4521229.i
  %478 = ptrtoint ptr %arrayidx453.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %arrayidx453.i, align 2
  %arrayidx461.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 9, i32 1
  %480 = ptrtoint ptr %arrayidx461.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %479, ptr %arrayidx461.i, align 2
  %add463.i = add nuw nsw i32 %conv277.i, 28
  %div4641230.i = lshr i32 %add463.i, 1
  %arrayidx465.i = getelementptr i16, ptr %in, i32 %div4641230.i
  %481 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %arrayidx465.i, align 2
  %arrayidx473.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 74, i32 %i.01276.i, i32 9, i32 2
  %483 = ptrtoint ptr %arrayidx473.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %482, ptr %arrayidx473.i, align 2
  %inc.i68 = add nuw nsw i32 %i.01276.i, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, 4
  br i1 %exitcond.not.i69, label %sprom_extract_r8.exit, label %for.body.i70.for.body.i70_crit_edge

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i70

sprom_extract_r8.exit:                            ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx474.i = getelementptr i16, ptr %in, i32 87
  %484 = ptrtoint ptr %arrayidx474.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %arrayidx474.i, align 2
  %486 = trunc i16 %485 to i8
  %conv478.i = and i8 %486, 1
  %fem.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76
  %487 = ptrtoint ptr %fem.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %conv478.i, ptr %fem.i, align 4
  %488 = load i16, ptr %arrayidx474.i, align 2
  %489 = trunc i16 %488 to i8
  %490 = lshr i8 %489, 1
  %conv483.i = and i8 %490, 3
  %extpa_gain.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 0, i32 1
  %491 = ptrtoint ptr %extpa_gain.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %conv483.i, ptr %extpa_gain.i, align 1
  %492 = load i16, ptr %arrayidx474.i, align 2
  %493 = trunc i16 %492 to i8
  %494 = lshr i8 %493, 3
  %pdet_range.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 0, i32 2
  %495 = ptrtoint ptr %pdet_range.i to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 %494, ptr %pdet_range.i, align 2
  %496 = load i16, ptr %arrayidx474.i, align 2
  %497 = lshr i16 %496, 8
  %498 = trunc i16 %497 to i8
  %conv497.i = and i8 %498, 7
  %tr_iso.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 0, i32 3
  %499 = ptrtoint ptr %tr_iso.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %conv497.i, ptr %tr_iso.i, align 1
  %500 = load i16, ptr %arrayidx474.i, align 2
  %501 = lshr i16 %500, 11
  %conv504.i = trunc i16 %501 to i8
  %antswlut.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 0, i32 4
  %502 = ptrtoint ptr %antswlut.i to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %conv504.i, ptr %antswlut.i, align 4
  %arrayidx507.i = getelementptr i16, ptr %in, i32 88
  %503 = ptrtoint ptr %arrayidx507.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %504 = load i16, ptr %arrayidx507.i, align 2
  %505 = trunc i16 %504 to i8
  %conv511.i = and i8 %505, 1
  %ghz5.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 1
  %506 = ptrtoint ptr %ghz5.i to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 %conv511.i, ptr %ghz5.i, align 1
  %507 = load i16, ptr %arrayidx507.i, align 2
  %508 = trunc i16 %507 to i8
  %509 = lshr i8 %508, 1
  %conv518.i = and i8 %509, 3
  %extpa_gain521.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 1, i32 1
  %510 = ptrtoint ptr %extpa_gain521.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 %conv518.i, ptr %extpa_gain521.i, align 1
  %511 = load i16, ptr %arrayidx507.i, align 2
  %512 = trunc i16 %511 to i8
  %513 = lshr i8 %512, 3
  %pdet_range529.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 1, i32 2
  %514 = ptrtoint ptr %pdet_range529.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %pdet_range529.i, align 1
  %515 = load i16, ptr %arrayidx507.i, align 2
  %516 = lshr i16 %515, 8
  %517 = trunc i16 %516 to i8
  %conv534.i = and i8 %517, 7
  %tr_iso537.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 1, i32 3
  %518 = ptrtoint ptr %tr_iso537.i to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %conv534.i, ptr %tr_iso537.i, align 1
  %519 = load i16, ptr %arrayidx507.i, align 2
  %520 = lshr i16 %519, 11
  %conv542.i = trunc i16 %520 to i8
  %antswlut545.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 76, i32 1, i32 4
  %521 = ptrtoint ptr %antswlut545.i to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 %conv542.i, ptr %antswlut545.i, align 1
  %arrayidx546.i = getelementptr i16, ptr %in, i32 77
  %522 = ptrtoint ptr %arrayidx546.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %arrayidx546.i, align 2
  %524 = lshr i16 %523, 8
  %conv550.i = trunc i16 %524 to i8
  %leddc_on_time.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 18
  %525 = ptrtoint ptr %leddc_on_time.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 %conv550.i, ptr %leddc_on_time.i, align 1
  %526 = load i16, ptr %arrayidx546.i, align 2
  %conv555.i = trunc i16 %526 to i8
  %leddc_off_time.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 19
  %527 = ptrtoint ptr %leddc_off_time.i to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %conv555.i, ptr %leddc_off_time.i, align 4
  %arrayidx556.i = getelementptr i16, ptr %in, i32 81
  %528 = ptrtoint ptr %arrayidx556.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %arrayidx556.i, align 2
  %530 = trunc i16 %529 to i8
  %conv560.i = and i8 %530, 15
  %txchain.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 93
  %531 = ptrtoint ptr %txchain.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %conv560.i, ptr %txchain.i, align 2
  %532 = load i16, ptr %arrayidx556.i, align 2
  %533 = trunc i16 %532 to i8
  %534 = lshr i8 %533, 4
  %rxchain.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 94
  %535 = ptrtoint ptr %rxchain.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 %534, ptr %rxchain.i, align 1
  %536 = load i16, ptr %arrayidx556.i, align 2
  %537 = lshr i16 %536, 8
  %conv570.i = trunc i16 %537 to i8
  %antswitch.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 95
  %538 = ptrtoint ptr %antswitch.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %conv570.i, ptr %antswitch.i, align 4
  %539 = ptrtoint ptr %arrayidx238.i to i32
  call void @__asan_load2_noabort(i32 %539)
  %540 = load i16, ptr %arrayidx238.i, align 2
  %conv575.i = trunc i16 %540 to i8
  %opo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 81
  %541 = ptrtoint ptr %opo.i to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 %conv575.i, ptr %opo.i, align 2
  %arrayidx577.i = getelementptr i16, ptr %in, i32 169
  %542 = ptrtoint ptr %arrayidx577.i to i32
  call void @__asan_load2_noabort(i32 %542)
  %543 = load i16, ptr %arrayidx577.i, align 2
  %mcs2gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 77
  %544 = ptrtoint ptr %mcs2gpo.i to i32
  call void @__asan_store2_noabort(i32 %544)
  store i16 %543, ptr %mcs2gpo.i, align 2
  %arrayidx583.i = getelementptr i16, ptr %in, i32 170
  %545 = ptrtoint ptr %arrayidx583.i to i32
  call void @__asan_load2_noabort(i32 %545)
  %546 = load i16, ptr %arrayidx583.i, align 2
  %arrayidx589.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 1
  %547 = ptrtoint ptr %arrayidx589.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 %546, ptr %arrayidx589.i, align 2
  %arrayidx590.i = getelementptr i16, ptr %in, i32 171
  %548 = ptrtoint ptr %arrayidx590.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %arrayidx590.i, align 2
  %arrayidx596.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 2
  %550 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 %549, ptr %arrayidx596.i, align 2
  %arrayidx597.i = getelementptr i16, ptr %in, i32 172
  %551 = ptrtoint ptr %arrayidx597.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %arrayidx597.i, align 2
  %arrayidx603.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 3
  %553 = ptrtoint ptr %arrayidx603.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 %552, ptr %arrayidx603.i, align 2
  %arrayidx604.i = getelementptr i16, ptr %in, i32 173
  %554 = ptrtoint ptr %arrayidx604.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %arrayidx604.i, align 2
  %arrayidx610.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 4
  %556 = ptrtoint ptr %arrayidx610.i to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 %555, ptr %arrayidx610.i, align 2
  %arrayidx611.i = getelementptr i16, ptr %in, i32 174
  %557 = ptrtoint ptr %arrayidx611.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %arrayidx611.i, align 2
  %arrayidx617.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 5
  %559 = ptrtoint ptr %arrayidx617.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %558, ptr %arrayidx617.i, align 2
  %arrayidx618.i = getelementptr i16, ptr %in, i32 175
  %560 = ptrtoint ptr %arrayidx618.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %arrayidx618.i, align 2
  %arrayidx624.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 6
  %562 = ptrtoint ptr %arrayidx624.i to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 %561, ptr %arrayidx624.i, align 2
  %arrayidx625.i = getelementptr i16, ptr %in, i32 176
  %563 = ptrtoint ptr %arrayidx625.i to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %arrayidx625.i, align 2
  %arrayidx631.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 77, i32 7
  %565 = ptrtoint ptr %arrayidx631.i to i32
  call void @__asan_store2_noabort(i32 %565)
  store i16 %564, ptr %arrayidx631.i, align 2
  %arrayidx635.i = getelementptr i16, ptr %in, i32 177
  %566 = ptrtoint ptr %arrayidx635.i to i32
  call void @__asan_load2_noabort(i32 %566)
  %567 = load i16, ptr %arrayidx635.i, align 2
  %mcs5gpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 78
  %568 = ptrtoint ptr %mcs5gpo.i to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 %567, ptr %mcs5gpo.i, align 2
  %arrayidx641.i = getelementptr i16, ptr %in, i32 178
  %569 = ptrtoint ptr %arrayidx641.i to i32
  call void @__asan_load2_noabort(i32 %569)
  %570 = load i16, ptr %arrayidx641.i, align 2
  %arrayidx647.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 1
  %571 = ptrtoint ptr %arrayidx647.i to i32
  call void @__asan_store2_noabort(i32 %571)
  store i16 %570, ptr %arrayidx647.i, align 2
  %arrayidx648.i = getelementptr i16, ptr %in, i32 179
  %572 = ptrtoint ptr %arrayidx648.i to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %arrayidx648.i, align 2
  %arrayidx654.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 2
  %574 = ptrtoint ptr %arrayidx654.i to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %573, ptr %arrayidx654.i, align 2
  %arrayidx655.i = getelementptr i16, ptr %in, i32 180
  %575 = ptrtoint ptr %arrayidx655.i to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %arrayidx655.i, align 2
  %arrayidx661.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 3
  %577 = ptrtoint ptr %arrayidx661.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 %576, ptr %arrayidx661.i, align 2
  %arrayidx662.i = getelementptr i16, ptr %in, i32 181
  %578 = ptrtoint ptr %arrayidx662.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %arrayidx662.i, align 2
  %arrayidx668.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 4
  %580 = ptrtoint ptr %arrayidx668.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %579, ptr %arrayidx668.i, align 2
  %arrayidx669.i = getelementptr i16, ptr %in, i32 182
  %581 = ptrtoint ptr %arrayidx669.i to i32
  call void @__asan_load2_noabort(i32 %581)
  %582 = load i16, ptr %arrayidx669.i, align 2
  %arrayidx675.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 5
  %583 = ptrtoint ptr %arrayidx675.i to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %582, ptr %arrayidx675.i, align 2
  %arrayidx676.i = getelementptr i16, ptr %in, i32 183
  %584 = ptrtoint ptr %arrayidx676.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %arrayidx676.i, align 2
  %arrayidx682.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 6
  %586 = ptrtoint ptr %arrayidx682.i to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %585, ptr %arrayidx682.i, align 2
  %arrayidx683.i = getelementptr i16, ptr %in, i32 184
  %587 = ptrtoint ptr %arrayidx683.i to i32
  call void @__asan_load2_noabort(i32 %587)
  %588 = load i16, ptr %arrayidx683.i, align 2
  %arrayidx689.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 78, i32 7
  %589 = ptrtoint ptr %arrayidx689.i to i32
  call void @__asan_store2_noabort(i32 %589)
  store i16 %588, ptr %arrayidx689.i, align 2
  %arrayidx693.i = getelementptr i16, ptr %in, i32 185
  %590 = ptrtoint ptr %arrayidx693.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %arrayidx693.i, align 2
  %mcs5glpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 79
  %592 = ptrtoint ptr %mcs5glpo.i to i32
  call void @__asan_store2_noabort(i32 %592)
  store i16 %591, ptr %mcs5glpo.i, align 2
  %arrayidx699.i = getelementptr i16, ptr %in, i32 186
  %593 = ptrtoint ptr %arrayidx699.i to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %arrayidx699.i, align 2
  %arrayidx705.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 1
  %595 = ptrtoint ptr %arrayidx705.i to i32
  call void @__asan_store2_noabort(i32 %595)
  store i16 %594, ptr %arrayidx705.i, align 2
  %arrayidx706.i = getelementptr i16, ptr %in, i32 187
  %596 = ptrtoint ptr %arrayidx706.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %arrayidx706.i, align 2
  %arrayidx712.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 2
  %598 = ptrtoint ptr %arrayidx712.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %597, ptr %arrayidx712.i, align 2
  %arrayidx713.i = getelementptr i16, ptr %in, i32 188
  %599 = ptrtoint ptr %arrayidx713.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %arrayidx713.i, align 2
  %arrayidx719.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 3
  %601 = ptrtoint ptr %arrayidx719.i to i32
  call void @__asan_store2_noabort(i32 %601)
  store i16 %600, ptr %arrayidx719.i, align 2
  %arrayidx720.i = getelementptr i16, ptr %in, i32 189
  %602 = ptrtoint ptr %arrayidx720.i to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %arrayidx720.i, align 2
  %arrayidx726.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 4
  %604 = ptrtoint ptr %arrayidx726.i to i32
  call void @__asan_store2_noabort(i32 %604)
  store i16 %603, ptr %arrayidx726.i, align 2
  %arrayidx727.i = getelementptr i16, ptr %in, i32 190
  %605 = ptrtoint ptr %arrayidx727.i to i32
  call void @__asan_load2_noabort(i32 %605)
  %606 = load i16, ptr %arrayidx727.i, align 2
  %arrayidx733.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 5
  %607 = ptrtoint ptr %arrayidx733.i to i32
  call void @__asan_store2_noabort(i32 %607)
  store i16 %606, ptr %arrayidx733.i, align 2
  %arrayidx734.i = getelementptr i16, ptr %in, i32 191
  %608 = ptrtoint ptr %arrayidx734.i to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %arrayidx734.i, align 2
  %arrayidx740.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 6
  %610 = ptrtoint ptr %arrayidx740.i to i32
  call void @__asan_store2_noabort(i32 %610)
  store i16 %609, ptr %arrayidx740.i, align 2
  %arrayidx741.i = getelementptr i16, ptr %in, i32 192
  %611 = ptrtoint ptr %arrayidx741.i to i32
  call void @__asan_load2_noabort(i32 %611)
  %612 = load i16, ptr %arrayidx741.i, align 2
  %arrayidx747.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 79, i32 7
  %613 = ptrtoint ptr %arrayidx747.i to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 %612, ptr %arrayidx747.i, align 2
  %arrayidx751.i = getelementptr i16, ptr %in, i32 193
  %614 = ptrtoint ptr %arrayidx751.i to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %arrayidx751.i, align 2
  %mcs5ghpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 80
  %616 = ptrtoint ptr %mcs5ghpo.i to i32
  call void @__asan_store2_noabort(i32 %616)
  store i16 %615, ptr %mcs5ghpo.i, align 2
  %arrayidx757.i = getelementptr i16, ptr %in, i32 194
  %617 = ptrtoint ptr %arrayidx757.i to i32
  call void @__asan_load2_noabort(i32 %617)
  %618 = load i16, ptr %arrayidx757.i, align 2
  %arrayidx763.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 1
  %619 = ptrtoint ptr %arrayidx763.i to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %618, ptr %arrayidx763.i, align 2
  %arrayidx764.i = getelementptr i16, ptr %in, i32 195
  %620 = ptrtoint ptr %arrayidx764.i to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %arrayidx764.i, align 2
  %arrayidx770.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 2
  %622 = ptrtoint ptr %arrayidx770.i to i32
  call void @__asan_store2_noabort(i32 %622)
  store i16 %621, ptr %arrayidx770.i, align 2
  %arrayidx771.i = getelementptr i16, ptr %in, i32 196
  %623 = ptrtoint ptr %arrayidx771.i to i32
  call void @__asan_load2_noabort(i32 %623)
  %624 = load i16, ptr %arrayidx771.i, align 2
  %arrayidx777.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 3
  %625 = ptrtoint ptr %arrayidx777.i to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 %624, ptr %arrayidx777.i, align 2
  %arrayidx778.i = getelementptr i16, ptr %in, i32 197
  %626 = ptrtoint ptr %arrayidx778.i to i32
  call void @__asan_load2_noabort(i32 %626)
  %627 = load i16, ptr %arrayidx778.i, align 2
  %arrayidx784.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 4
  %628 = ptrtoint ptr %arrayidx784.i to i32
  call void @__asan_store2_noabort(i32 %628)
  store i16 %627, ptr %arrayidx784.i, align 2
  %arrayidx785.i = getelementptr i16, ptr %in, i32 198
  %629 = ptrtoint ptr %arrayidx785.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %arrayidx785.i, align 2
  %arrayidx791.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 5
  %631 = ptrtoint ptr %arrayidx791.i to i32
  call void @__asan_store2_noabort(i32 %631)
  store i16 %630, ptr %arrayidx791.i, align 2
  %arrayidx792.i = getelementptr i16, ptr %in, i32 199
  %632 = ptrtoint ptr %arrayidx792.i to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %arrayidx792.i, align 2
  %arrayidx798.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 6
  %634 = ptrtoint ptr %arrayidx798.i to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 %633, ptr %arrayidx798.i, align 2
  %arrayidx799.i = getelementptr i16, ptr %in, i32 200
  %635 = ptrtoint ptr %arrayidx799.i to i32
  call void @__asan_load2_noabort(i32 %635)
  %636 = load i16, ptr %arrayidx799.i, align 2
  %arrayidx805.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 80, i32 7
  %637 = ptrtoint ptr %arrayidx805.i to i32
  call void @__asan_store2_noabort(i32 %637)
  store i16 %636, ptr %arrayidx805.i, align 2
  %arrayidx808.i = getelementptr i16, ptr %in, i32 90
  %638 = ptrtoint ptr %arrayidx808.i to i32
  call void @__asan_load2_noabort(i32 %638)
  %639 = load i16, ptr %arrayidx808.i, align 2
  %640 = and i16 %639, 511
  %rawtempsense.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 102
  %641 = ptrtoint ptr %rawtempsense.i to i32
  call void @__asan_store2_noabort(i32 %641)
  store i16 %640, ptr %rawtempsense.i, align 4
  %642 = load i16, ptr %arrayidx808.i, align 2
  %643 = lshr i16 %642, 9
  %conv817.i = trunc i16 %643 to i8
  %measpower.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 103
  %644 = ptrtoint ptr %measpower.i to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %conv817.i, ptr %measpower.i, align 2
  %arrayidx818.i = getelementptr i16, ptr %in, i32 91
  %645 = ptrtoint ptr %arrayidx818.i to i32
  call void @__asan_load2_noabort(i32 %645)
  %646 = load i16, ptr %arrayidx818.i, align 2
  %conv822.i = trunc i16 %646 to i8
  %tempsense_slope.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 104
  %647 = ptrtoint ptr %tempsense_slope.i to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 %conv822.i, ptr %tempsense_slope.i, align 1
  %648 = load i16, ptr %arrayidx818.i, align 2
  %649 = lshr i16 %648, 10
  %conv827.i = trunc i16 %649 to i8
  %tempcorrx.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 105
  %650 = ptrtoint ptr %tempcorrx.i to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 %conv827.i, ptr %tempcorrx.i, align 4
  %651 = load i16, ptr %arrayidx818.i, align 2
  %652 = lshr i16 %651, 8
  %653 = trunc i16 %652 to i8
  %conv832.i = and i8 %653, 3
  %tempsense_option.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 106
  %654 = ptrtoint ptr %tempsense_option.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 %conv832.i, ptr %tempsense_option.i, align 1
  %arrayidx833.i = getelementptr i16, ptr %in, i32 92
  %655 = ptrtoint ptr %arrayidx833.i to i32
  call void @__asan_load2_noabort(i32 %655)
  %656 = load i16, ptr %arrayidx833.i, align 2
  %657 = trunc i16 %656 to i8
  %conv837.i = and i8 %657, 15
  %freqoffset_corr.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 107
  %658 = ptrtoint ptr %freqoffset_corr.i to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %conv837.i, ptr %freqoffset_corr.i, align 2
  %659 = load i16, ptr %arrayidx833.i, align 2
  %660 = trunc i16 %659 to i8
  %661 = lshr i8 %660, 4
  %conv842.i = and i8 %661, 1
  %iqcal_swp_dis.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 108
  %662 = ptrtoint ptr %iqcal_swp_dis.i to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 %conv842.i, ptr %iqcal_swp_dis.i, align 1
  %663 = load i16, ptr %arrayidx833.i, align 2
  %664 = trunc i16 %663 to i8
  %665 = lshr i8 %664, 5
  %conv847.i = and i8 %665, 1
  %hw_iqcal_en.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 109
  %666 = ptrtoint ptr %hw_iqcal_en.i to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 %conv847.i, ptr %hw_iqcal_en.i, align 4
  %arrayidx848.i = getelementptr i16, ptr %in, i32 203
  %667 = ptrtoint ptr %arrayidx848.i to i32
  call void @__asan_load2_noabort(i32 %667)
  %668 = load i16, ptr %arrayidx848.i, align 2
  %bw40po.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 98
  %669 = ptrtoint ptr %bw40po.i to i32
  call void @__asan_store2_noabort(i32 %669)
  store i16 %668, ptr %bw40po.i, align 2
  %arrayidx853.i = getelementptr i16, ptr %in, i32 201
  %670 = ptrtoint ptr %arrayidx853.i to i32
  call void @__asan_load2_noabort(i32 %670)
  %671 = load i16, ptr %arrayidx853.i, align 2
  %cddpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 96
  %672 = ptrtoint ptr %cddpo.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 %671, ptr %cddpo.i, align 2
  %arrayidx858.i = getelementptr i16, ptr %in, i32 202
  %673 = ptrtoint ptr %arrayidx858.i to i32
  call void @__asan_load2_noabort(i32 %673)
  %674 = load i16, ptr %arrayidx858.i, align 2
  %stbcpo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 97
  %675 = ptrtoint ptr %stbcpo.i to i32
  call void @__asan_store2_noabort(i32 %675)
  store i16 %674, ptr %stbcpo.i, align 4
  %arrayidx863.i = getelementptr i16, ptr %in, i32 204
  %676 = ptrtoint ptr %arrayidx863.i to i32
  call void @__asan_load2_noabort(i32 %676)
  %677 = load i16, ptr %arrayidx863.i, align 2
  %bwduppo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 99
  %678 = ptrtoint ptr %bwduppo.i to i32
  call void @__asan_store2_noabort(i32 %678)
  store i16 %677, ptr %bwduppo.i, align 4
  %arrayidx868.i = getelementptr i16, ptr %in, i32 89
  %679 = ptrtoint ptr %arrayidx868.i to i32
  call void @__asan_load2_noabort(i32 %679)
  %680 = load i16, ptr %arrayidx868.i, align 2
  %681 = lshr i16 %680, 8
  %conv872.i = trunc i16 %681 to i8
  %tempthresh.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 100
  %682 = ptrtoint ptr %tempthresh.i to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 %conv872.i, ptr %tempthresh.i, align 2
  %683 = load i16, ptr %arrayidx868.i, align 2
  %conv877.i = trunc i16 %683 to i8
  %tempoffset.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 101
  %684 = ptrtoint ptr %tempoffset.i to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %conv877.i, ptr %tempoffset.i, align 1
  %arrayidx878.i = getelementptr i16, ptr %in, i32 94
  %685 = ptrtoint ptr %arrayidx878.i to i32
  call void @__asan_load2_noabort(i32 %685)
  %686 = load i16, ptr %arrayidx878.i, align 2
  %conv882.i = trunc i16 %686 to i8
  %phycal_tempdelta.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 112
  %687 = ptrtoint ptr %phycal_tempdelta.i to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 %conv882.i, ptr %phycal_tempdelta.i, align 1
  %688 = load i16, ptr %arrayidx878.i, align 2
  %689 = lshr i16 %688, 8
  %690 = trunc i16 %689 to i8
  %conv887.i = and i8 %690, 15
  %temps_period.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 113
  %691 = ptrtoint ptr %temps_period.i to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 %conv887.i, ptr %temps_period.i, align 4
  %692 = load i16, ptr %arrayidx878.i, align 2
  %693 = lshr i16 %692, 12
  %conv892.i = trunc i16 %693 to i8
  %temps_hysteresis.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 114
  %694 = ptrtoint ptr %temps_hysteresis.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %conv892.i, ptr %temps_hysteresis.i, align 1
  %arrayidx.i1274.i = getelementptr i16, ptr %in, i32 49
  %695 = ptrtoint ptr %arrayidx.i1274.i to i32
  call void @__asan_load2_noabort(i32 %695)
  %696 = load i16, ptr %arrayidx.i1274.i, align 2
  %conv1.i1275.i = trunc i16 %696 to i8
  %txpid2g.i.i71 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 48
  %697 = ptrtoint ptr %txpid2g.i.i71 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %conv1.i1275.i, ptr %txpid2g.i.i71, align 2
  %698 = load i16, ptr %arrayidx.i1274.i, align 2
  %699 = lshr i16 %698, 8
  %conv7.i.i72 = trunc i16 %699 to i8
  %arrayidx9.i.i73 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 1
  %700 = ptrtoint ptr %arrayidx9.i.i73 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 %conv7.i.i72, ptr %arrayidx9.i.i73, align 1
  %arrayidx10.i.i74 = getelementptr i16, ptr %in, i32 50
  %701 = ptrtoint ptr %arrayidx10.i.i74 to i32
  call void @__asan_load2_noabort(i32 %701)
  %702 = load i16, ptr %arrayidx10.i.i74, align 2
  %conv14.i.i75 = trunc i16 %702 to i8
  %arrayidx16.i.i76 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 2
  %703 = ptrtoint ptr %arrayidx16.i.i76 to i32
  call void @__asan_store1_noabort(i32 %703)
  store i8 %conv14.i.i75, ptr %arrayidx16.i.i76, align 2
  %704 = load i16, ptr %arrayidx10.i.i74, align 2
  %705 = lshr i16 %704, 8
  %conv21.i.i77 = trunc i16 %705 to i8
  %arrayidx23.i.i78 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 48, i32 3
  %706 = ptrtoint ptr %arrayidx23.i.i78 to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 %conv21.i.i77, ptr %arrayidx23.i.i78, align 1
  %arrayidx24.i.i79 = getelementptr i16, ptr %in, i32 53
  %707 = ptrtoint ptr %arrayidx24.i.i79 to i32
  call void @__asan_load2_noabort(i32 %707)
  %708 = load i16, ptr %arrayidx24.i.i79, align 2
  %conv28.i.i80 = trunc i16 %708 to i8
  %txpid5gl.i.i81 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 49
  %709 = ptrtoint ptr %txpid5gl.i.i81 to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 %conv28.i.i80, ptr %txpid5gl.i.i81, align 2
  %710 = load i16, ptr %arrayidx24.i.i79, align 2
  %711 = lshr i16 %710, 8
  %conv34.i.i82 = trunc i16 %711 to i8
  %arrayidx36.i.i83 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 1
  %712 = ptrtoint ptr %arrayidx36.i.i83 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 %conv34.i.i82, ptr %arrayidx36.i.i83, align 1
  %arrayidx37.i.i84 = getelementptr i16, ptr %in, i32 54
  %713 = ptrtoint ptr %arrayidx37.i.i84 to i32
  call void @__asan_load2_noabort(i32 %713)
  %714 = load i16, ptr %arrayidx37.i.i84, align 2
  %conv41.i.i85 = trunc i16 %714 to i8
  %arrayidx43.i.i86 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 2
  %715 = ptrtoint ptr %arrayidx43.i.i86 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 %conv41.i.i85, ptr %arrayidx43.i.i86, align 2
  %716 = load i16, ptr %arrayidx37.i.i84, align 2
  %717 = lshr i16 %716, 8
  %conv48.i.i87 = trunc i16 %717 to i8
  %arrayidx50.i.i88 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 49, i32 3
  %718 = ptrtoint ptr %arrayidx50.i.i88 to i32
  call void @__asan_store1_noabort(i32 %718)
  store i8 %conv48.i.i87, ptr %arrayidx50.i.i88, align 1
  %arrayidx51.i.i89 = getelementptr i16, ptr %in, i32 51
  %719 = ptrtoint ptr %arrayidx51.i.i89 to i32
  call void @__asan_load2_noabort(i32 %719)
  %720 = load i16, ptr %arrayidx51.i.i89, align 2
  %conv55.i.i90 = trunc i16 %720 to i8
  %txpid5g.i.i91 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 50
  %721 = ptrtoint ptr %txpid5g.i.i91 to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 %conv55.i.i90, ptr %txpid5g.i.i91, align 2
  %722 = load i16, ptr %arrayidx51.i.i89, align 2
  %723 = lshr i16 %722, 8
  %conv61.i.i92 = trunc i16 %723 to i8
  %arrayidx63.i.i93 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 1
  %724 = ptrtoint ptr %arrayidx63.i.i93 to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 %conv61.i.i92, ptr %arrayidx63.i.i93, align 1
  %arrayidx64.i.i94 = getelementptr i16, ptr %in, i32 52
  %725 = ptrtoint ptr %arrayidx64.i.i94 to i32
  call void @__asan_load2_noabort(i32 %725)
  %726 = load i16, ptr %arrayidx64.i.i94, align 2
  %conv68.i.i95 = trunc i16 %726 to i8
  %arrayidx70.i.i96 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 2
  %727 = ptrtoint ptr %arrayidx70.i.i96 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %conv68.i.i95, ptr %arrayidx70.i.i96, align 2
  %728 = load i16, ptr %arrayidx64.i.i94, align 2
  %729 = lshr i16 %728, 8
  %conv75.i.i97 = trunc i16 %729 to i8
  %arrayidx77.i.i98 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 50, i32 3
  %730 = ptrtoint ptr %arrayidx77.i.i98 to i32
  call void @__asan_store1_noabort(i32 %730)
  store i8 %conv75.i.i97, ptr %arrayidx77.i.i98, align 1
  %arrayidx78.i.i99 = getelementptr i16, ptr %in, i32 55
  %731 = ptrtoint ptr %arrayidx78.i.i99 to i32
  call void @__asan_load2_noabort(i32 %731)
  %732 = load i16, ptr %arrayidx78.i.i99, align 2
  %conv82.i.i100 = trunc i16 %732 to i8
  %txpid5gh.i.i101 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 51
  %733 = ptrtoint ptr %txpid5gh.i.i101 to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 %conv82.i.i100, ptr %txpid5gh.i.i101, align 2
  %734 = load i16, ptr %arrayidx78.i.i99, align 2
  %735 = lshr i16 %734, 8
  %conv88.i.i102 = trunc i16 %735 to i8
  %arrayidx90.i.i103 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 1
  %736 = ptrtoint ptr %arrayidx90.i.i103 to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 %conv88.i.i102, ptr %arrayidx90.i.i103, align 1
  %arrayidx91.i.i104 = getelementptr i16, ptr %in, i32 56
  %737 = ptrtoint ptr %arrayidx91.i.i104 to i32
  call void @__asan_load2_noabort(i32 %737)
  %738 = load i16, ptr %arrayidx91.i.i104, align 2
  %conv95.i.i105 = trunc i16 %738 to i8
  %arrayidx97.i.i106 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 2
  %739 = ptrtoint ptr %arrayidx97.i.i106 to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 %conv95.i.i105, ptr %arrayidx97.i.i106, align 2
  %740 = load i16, ptr %arrayidx91.i.i104, align 2
  %741 = lshr i16 %740, 8
  %conv102.i.i107 = trunc i16 %741 to i8
  %arrayidx104.i.i108 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 51, i32 3
  %742 = ptrtoint ptr %arrayidx104.i.i108 to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 %conv102.i.i107, ptr %arrayidx104.i.i108, align 1
  br label %sw.epilog

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %conv32 = zext i8 %14 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv32) #11
  %743 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 1, ptr %out, align 4
  tail call fastcc void @sprom_extract_r123(ptr noundef %out, ptr noundef %in)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end36, %sprom_extract_r8.exit, %sprom_extract_r45.exit, %sw.bb
  %boardflags_lo = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 70
  %744 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %boardflags_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %745)
  %cmp43 = icmp eq i16 %745, -1
  br i1 %cmp43, label %if.then45, label %sw.epilog.if.end47_crit_edge

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %746 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 0, ptr %boardflags_lo, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %sw.epilog.if.end47_crit_edge
  %boardflags_hi = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 71
  %747 = ptrtoint ptr %boardflags_hi to i32
  call void @__asan_load2_noabort(i32 %747)
  %748 = load i16, ptr %boardflags_hi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %748)
  %cmp49 = icmp eq i16 %748, -1
  br i1 %cmp49, label %if.then51, label %if.end47.if.end53_crit_edge

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %749 = ptrtoint ptr %boardflags_hi to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 0, ptr %boardflags_hi, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end47.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @sprom_extract_r123(ptr noundef %out, ptr noundef readonly %in) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  %.240 = select i1 %cmp, i32 37, i32 36
  %il0mac = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 2
  %arrayidx7 = getelementptr i16, ptr %in, i32 %.240
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx7, align 2
  %4 = lshr i16 %3, 8
  %conv1.i = trunc i16 %4 to i8
  %incdec.ptr.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %il0mac to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1.i, ptr %il0mac, align 1
  %6 = load i16, ptr %arrayidx7, align 2
  %conv3.i = trunc i16 %6 to i8
  %incdec.ptr4.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %incdec.ptr.i, align 1
  %arrayidx.1.i = getelementptr i16, ptr %arrayidx7, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.1.i, align 2
  %10 = lshr i16 %9, 8
  %conv1.1.i = trunc i16 %10 to i8
  %incdec.ptr.1.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.1.i, ptr %incdec.ptr4.i, align 1
  %12 = load i16, ptr %arrayidx.1.i, align 2
  %conv3.1.i = trunc i16 %12 to i8
  %incdec.ptr4.1.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.1.i, ptr %incdec.ptr.1.i, align 1
  %arrayidx.2.i = getelementptr i16, ptr %arrayidx7, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.2.i, align 2
  %16 = lshr i16 %15, 8
  %conv1.2.i = trunc i16 %16 to i8
  %incdec.ptr.2.i = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %incdec.ptr4.1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.2.i, ptr %incdec.ptr4.1.i, align 1
  %18 = load i16, ptr %arrayidx.2.i, align 2
  %conv3.2.i = trunc i16 %18 to i8
  %19 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.2.i, ptr %incdec.ptr.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp10 = icmp ult i8 %1, 3
  br i1 %cmp10, label %if.then12, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %et0mac = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 3
  %arrayidx17 = getelementptr i16, ptr %in, i32 39
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx17, align 2
  %22 = lshr i16 %21, 8
  %conv1.i241 = trunc i16 %22 to i8
  %incdec.ptr.i242 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %et0mac to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv1.i241, ptr %et0mac, align 1
  %24 = load i16, ptr %arrayidx17, align 2
  %conv3.i243 = trunc i16 %24 to i8
  %incdec.ptr4.i244 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %incdec.ptr.i242 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv3.i243, ptr %incdec.ptr.i242, align 1
  %arrayidx.1.i245 = getelementptr i16, ptr %in, i32 40
  %26 = ptrtoint ptr %arrayidx.1.i245 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1.i245, align 2
  %28 = lshr i16 %27, 8
  %conv1.1.i246 = trunc i16 %28 to i8
  %incdec.ptr.1.i247 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %incdec.ptr4.i244 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.1.i246, ptr %incdec.ptr4.i244, align 1
  %30 = load i16, ptr %arrayidx.1.i245, align 2
  %conv3.1.i248 = trunc i16 %30 to i8
  %incdec.ptr4.1.i249 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %incdec.ptr.1.i247 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.1.i248, ptr %incdec.ptr.1.i247, align 1
  %arrayidx.2.i250 = getelementptr i16, ptr %in, i32 41
  %32 = ptrtoint ptr %arrayidx.2.i250 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.2.i250, align 2
  %34 = lshr i16 %33, 8
  %conv1.2.i251 = trunc i16 %34 to i8
  %incdec.ptr.2.i252 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %incdec.ptr4.1.i249 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1.2.i251, ptr %incdec.ptr4.1.i249, align 1
  %36 = load i16, ptr %arrayidx.2.i250, align 2
  %conv3.2.i253 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %incdec.ptr.2.i252 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv3.2.i253, ptr %incdec.ptr.2.i252, align 1
  %et1mac = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 4
  %arrayidx22 = getelementptr i16, ptr %in, i32 42
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx22, align 2
  %40 = lshr i16 %39, 8
  %conv1.i254 = trunc i16 %40 to i8
  %incdec.ptr.i255 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %et1mac to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv1.i254, ptr %et1mac, align 1
  %42 = load i16, ptr %arrayidx22, align 2
  %conv3.i256 = trunc i16 %42 to i8
  %incdec.ptr4.i257 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %incdec.ptr.i255 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv3.i256, ptr %incdec.ptr.i255, align 1
  %arrayidx.1.i258 = getelementptr i16, ptr %in, i32 43
  %44 = ptrtoint ptr %arrayidx.1.i258 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.1.i258, align 2
  %46 = lshr i16 %45, 8
  %conv1.1.i259 = trunc i16 %46 to i8
  %incdec.ptr.1.i260 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 4, i32 3
  %47 = ptrtoint ptr %incdec.ptr4.i257 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv1.1.i259, ptr %incdec.ptr4.i257, align 1
  %48 = load i16, ptr %arrayidx.1.i258, align 2
  %conv3.1.i261 = trunc i16 %48 to i8
  %incdec.ptr4.1.i262 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %incdec.ptr.1.i260 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv3.1.i261, ptr %incdec.ptr.1.i260, align 1
  %arrayidx.2.i263 = getelementptr i16, ptr %in, i32 44
  %50 = ptrtoint ptr %arrayidx.2.i263 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.2.i263, align 2
  %52 = lshr i16 %51, 8
  %conv1.2.i264 = trunc i16 %52 to i8
  %incdec.ptr.2.i265 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 4, i32 5
  %53 = ptrtoint ptr %incdec.ptr4.1.i262 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv1.2.i264, ptr %incdec.ptr4.1.i262, align 1
  %54 = load i16, ptr %arrayidx.2.i263, align 2
  %conv3.2.i266 = trunc i16 %54 to i8
  %55 = ptrtoint ptr %incdec.ptr.2.i265 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv3.2.i266, ptr %incdec.ptr.2.i265, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %entry.if.end23_crit_edge
  %arrayidx24 = getelementptr i16, ptr %in, i32 45
  %56 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx24, align 2
  %58 = trunc i16 %57 to i8
  %conv26 = and i8 %58, 31
  %et0phyaddr = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 6
  %59 = ptrtoint ptr %et0phyaddr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv26, ptr %et0phyaddr, align 2
  %60 = load i16, ptr %arrayidx24, align 2
  %61 = lshr i16 %60, 5
  %62 = trunc i16 %61 to i8
  %conv31 = and i8 %62, 31
  %et1phyaddr = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 7
  %63 = ptrtoint ptr %et1phyaddr to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv31, ptr %et1phyaddr, align 1
  %64 = load i16, ptr %arrayidx24, align 2
  %65 = lshr i16 %64, 14
  %66 = trunc i16 %65 to i8
  %conv36 = and i8 %66, 1
  %et0mdcport = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 9
  %67 = ptrtoint ptr %et0mdcport to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv36, ptr %et0mdcport, align 1
  %68 = load i16, ptr %arrayidx24, align 2
  %69 = lshr i16 %68, 15
  %conv41 = trunc i16 %69 to i8
  %et1mdcport = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 10
  %70 = ptrtoint ptr %et1mdcport to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv41, ptr %et1mdcport, align 2
  %arrayidx42 = getelementptr i16, ptr %in, i32 46
  %71 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx42, align 2
  %73 = and i16 %72, 255
  %board_rev = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 13
  %74 = ptrtoint ptr %board_rev to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %board_rev, align 2
  %arrayidx47 = getelementptr i16, ptr %in, i32 2
  %75 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx47, align 2
  %board_type = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 15
  %77 = ptrtoint ptr %board_type to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %board_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp54 = icmp eq i8 %1, 1
  br i1 %cmp54, label %if.then56, label %if.end23.if.end62_crit_edge

if.end23.if.end62_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then56:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx42, align 2
  %80 = lshr i16 %79, 8
  %81 = trunc i16 %80 to i8
  %conv61 = and i8 %81, 15
  %country_code = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 16
  %82 = ptrtoint ptr %country_code to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv61, ptr %country_code, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end23.if.end62_crit_edge
  %83 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx42, align 2
  %85 = lshr i16 %84, 14
  %conv67 = trunc i16 %85 to i8
  %ant_available_a = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 20
  %86 = ptrtoint ptr %ant_available_a to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv67, ptr %ant_available_a, align 1
  %87 = load i16, ptr %arrayidx42, align 2
  %88 = lshr i16 %87, 12
  %89 = trunc i16 %88 to i8
  %conv72 = and i8 %89, 3
  %ant_available_bg = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 21
  %90 = ptrtoint ptr %ant_available_bg to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv72, ptr %ant_available_bg, align 2
  %arrayidx73 = getelementptr i16, ptr %in, i32 47
  %91 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx73, align 2
  %pa0b0 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 22
  %93 = ptrtoint ptr %pa0b0 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %pa0b0, align 4
  %arrayidx78 = getelementptr i16, ptr %in, i32 48
  %94 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx78, align 2
  %pa0b1 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 23
  %96 = ptrtoint ptr %pa0b1 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %pa0b1, align 2
  %arrayidx83 = getelementptr i16, ptr %in, i32 49
  %97 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx83, align 2
  %pa0b2 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 24
  %99 = ptrtoint ptr %pa0b2 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %pa0b2, align 4
  %arrayidx88 = getelementptr i16, ptr %in, i32 53
  %100 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx88, align 2
  %pa1b0 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 25
  %102 = ptrtoint ptr %pa1b0 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %pa1b0, align 2
  %arrayidx93 = getelementptr i16, ptr %in, i32 54
  %103 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx93, align 2
  %pa1b1 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 26
  %105 = ptrtoint ptr %pa1b1 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %pa1b1, align 4
  %arrayidx98 = getelementptr i16, ptr %in, i32 55
  %106 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx98, align 2
  %pa1b2 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 27
  %108 = ptrtoint ptr %pa1b2 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %pa1b2, align 2
  %arrayidx103 = getelementptr i16, ptr %in, i32 50
  %109 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx103, align 2
  %conv107 = trunc i16 %110 to i8
  %gpio0 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 34
  %111 = ptrtoint ptr %gpio0 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv107, ptr %gpio0, align 4
  %112 = load i16, ptr %arrayidx103, align 2
  %113 = lshr i16 %112, 8
  %conv112 = trunc i16 %113 to i8
  %gpio1 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 35
  %114 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv112, ptr %gpio1, align 1
  %arrayidx113 = getelementptr i16, ptr %in, i32 51
  %115 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %arrayidx113, align 2
  %conv117 = trunc i16 %116 to i8
  %gpio2 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 36
  %117 = ptrtoint ptr %gpio2 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv117, ptr %gpio2, align 2
  %118 = load i16, ptr %arrayidx113, align 2
  %119 = lshr i16 %118, 8
  %conv122 = trunc i16 %119 to i8
  %gpio3 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 37
  %120 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv122, ptr %gpio3, align 1
  %arrayidx123 = getelementptr i16, ptr %in, i32 52
  %121 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx123, align 2
  %123 = lshr i16 %122, 8
  %conv127 = trunc i16 %123 to i8
  %maxpwr_a = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 40
  %124 = ptrtoint ptr %maxpwr_a to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv127, ptr %maxpwr_a, align 2
  %125 = load i16, ptr %arrayidx123, align 2
  %conv132 = trunc i16 %125 to i8
  %maxpwr_bg = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 38
  %126 = ptrtoint ptr %maxpwr_bg to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv132, ptr %maxpwr_bg, align 4
  %arrayidx133 = getelementptr i16, ptr %in, i32 56
  %127 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx133, align 2
  %129 = lshr i16 %128, 8
  %conv137 = trunc i16 %129 to i8
  %itssi_a = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 42
  %130 = ptrtoint ptr %itssi_a to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv137, ptr %itssi_a, align 4
  %131 = load i16, ptr %arrayidx133, align 2
  %conv142 = trunc i16 %131 to i8
  %itssi_bg = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 43
  %132 = ptrtoint ptr %itssi_bg to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv142, ptr %itssi_bg, align 1
  %arrayidx143 = getelementptr i16, ptr %in, i32 57
  %133 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx143, align 2
  %boardflags_lo = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 70
  %135 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %boardflags_lo, align 4
  %arrayidx148 = getelementptr i16, ptr %in, i32 59
  %136 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx148, align 2
  %138 = lshr i16 %137, 8
  %conv152 = trunc i16 %138 to i8
  %alpha2 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 17
  %139 = ptrtoint ptr %alpha2 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv152, ptr %alpha2, align 1
  %140 = load i16, ptr %arrayidx148, align 2
  %conv158 = trunc i16 %140 to i8
  %arrayidx160 = getelementptr %struct.ssb_sprom, ptr %out, i32 0, i32 17, i32 1
  %141 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv158, ptr %arrayidx160, align 1
  %arrayidx.i = getelementptr i16, ptr %in, i32 58
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.i, align 2
  %and25.i = and i16 %143, 255
  %conv4.i = trunc i16 %143 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %and25.i)
  %cmp.i = icmp eq i16 %and25.i, 255
  %spec.store.select.i = select i1 %cmp.i, i8 2, i8 %conv4.i
  br i1 %cmp54, label %sprom_extract_antgain.exit280.thread, label %sprom_extract_antgain.exit280

sprom_extract_antgain.exit280.thread:             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl i8 %spec.store.select.i, 2
  %antenna_gain286 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75
  %144 = ptrtoint ptr %antenna_gain286 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %shl.i, ptr %antenna_gain286, align 4
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.i, align 2
  %147 = lshr i16 %146, 8
  %conv4.i270287 = trunc i16 %147 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %147)
  %cmp.i272288 = icmp eq i16 %147, 255
  %conv4.i270287.op = shl i8 %conv4.i270287, 2
  %shl.i275 = select i1 %cmp.i272288, i8 8, i8 %conv4.i270287.op
  %a1283 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 1
  %148 = ptrtoint ptr %a1283 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %shl.i275, ptr %a1283, align 1
  br label %if.end170

sprom_extract_antgain.exit280:                    ; preds = %if.end62
  %or.i = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i, i8 %spec.store.select.i, i8 2) #8
  %antenna_gain = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75
  %149 = ptrtoint ptr %antenna_gain to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %or.i, ptr %antenna_gain, align 4
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.i, align 2
  %152 = lshr i16 %151, 8
  %conv4.i270 = trunc i16 %152 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %152)
  %cmp.i272 = icmp eq i16 %152, 255
  %spec.store.select.i273 = select i1 %cmp.i272, i8 2, i8 %conv4.i270
  %or.i277 = tail call i8 @llvm.fshl.i8(i8 %spec.store.select.i273, i8 %spec.store.select.i273, i8 2) #8
  %a1 = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 75, i32 1
  %153 = ptrtoint ptr %a1 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %or.i277, ptr %a1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp167.not = icmp eq i8 %1, 0
  br i1 %cmp167.not, label %sprom_extract_antgain.exit280.if.end170_crit_edge, label %if.then169

sprom_extract_antgain.exit280.if.end170_crit_edge: ; preds = %sprom_extract_antgain.exit280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then169:                                       ; preds = %sprom_extract_antgain.exit280
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i281 = getelementptr i16, ptr %in, i32 28
  %154 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx.i281, align 2
  %boardflags_hi.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 71
  %156 = ptrtoint ptr %boardflags_hi.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %boardflags_hi.i, align 2
  %arrayidx2.i = getelementptr i16, ptr %in, i32 60
  %157 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx2.i, align 2
  %conv6.i = trunc i16 %158 to i8
  %opo.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 81
  %159 = ptrtoint ptr %opo.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv6.i, ptr %opo.i, align 2
  %arrayidx7.i = getelementptr i16, ptr %in, i32 30
  %160 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx7.i, align 2
  %pa1lob0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 28
  %162 = ptrtoint ptr %pa1lob0.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %161, ptr %pa1lob0.i, align 4
  %arrayidx12.i = getelementptr i16, ptr %in, i32 31
  %163 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx12.i, align 2
  %pa1lob1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 29
  %165 = ptrtoint ptr %pa1lob1.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %pa1lob1.i, align 2
  %arrayidx17.i = getelementptr i16, ptr %in, i32 32
  %166 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx17.i, align 2
  %pa1lob2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 30
  %168 = ptrtoint ptr %pa1lob2.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %pa1lob2.i, align 4
  %arrayidx22.i = getelementptr i16, ptr %in, i32 33
  %169 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx22.i, align 2
  %pa1hib0.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 31
  %171 = ptrtoint ptr %pa1hib0.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %pa1hib0.i, align 2
  %arrayidx27.i = getelementptr i16, ptr %in, i32 34
  %172 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx27.i, align 2
  %pa1hib1.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 32
  %174 = ptrtoint ptr %pa1hib1.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %pa1hib1.i, align 4
  %arrayidx32.i = getelementptr i16, ptr %in, i32 35
  %175 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %arrayidx32.i, align 2
  %pa1hib2.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 33
  %177 = ptrtoint ptr %pa1hib2.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %pa1hib2.i, align 2
  %arrayidx37.i = getelementptr i16, ptr %in, i32 29
  %178 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx37.i, align 2
  %conv41.i = trunc i16 %179 to i8
  %maxpwr_ah.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 41
  %180 = ptrtoint ptr %maxpwr_ah.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv41.i, ptr %maxpwr_ah.i, align 1
  %181 = load i16, ptr %arrayidx37.i, align 2
  %182 = lshr i16 %181, 8
  %conv46.i = trunc i16 %182 to i8
  %maxpwr_al.i = getelementptr inbounds %struct.ssb_sprom, ptr %out, i32 0, i32 39
  %183 = ptrtoint ptr %maxpwr_al.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv46.i, ptr %maxpwr_al.i, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %sprom_extract_antgain.exit280.if.end170_crit_edge, %sprom_extract_antgain.exit280.thread
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_sprom_show(ptr noundef %pcidev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pcidev, i32 -136
  %call = tail call ptr @ssb_pci_dev_to_bus(ptr noundef %add.ptr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ssb_attr_sprom_show(ptr noundef nonnull %call, ptr noundef %buf, ptr noundef nonnull @sprom_do_read) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_sprom_store(ptr noundef %pcidev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pcidev, i32 -136
  %call = tail call ptr @ssb_pci_dev_to_bus(ptr noundef %add.ptr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ssb_attr_sprom_store(ptr noundef nonnull %call, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull @sprom_check_crc, ptr noundef nonnull @sprom_do_write) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssb_pci_dev_to_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_attr_sprom_show(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_attr_sprom_store(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprom_do_write(ptr nocapture noundef readonly %bus, ptr nocapture noundef readonly %sprom) #0 align 64 {
entry:
  %spromctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spromctl) #8
  %3 = ptrtoint ptr %spromctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %spromctl, align 4, !annotation !107
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sprom_size, align 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  %call1 = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 136, ptr noundef nonnull %spromctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %spromctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spromctl, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %spromctl, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 136, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end8:                                          ; preds = %if.end
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  call void @msleep(i32 noundef 500) #8
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp110.not = icmp eq i16 %5, 0
  br i1 %cmp110.not, label %do.end8.for.end_crit_edge, label %for.body.lr.ph

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end8
  %div107 = lshr i32 %conv, 2
  %div22108 = lshr i32 %conv, 1
  %mul = mul nuw nsw i32 %conv, 3
  %div33109 = lshr i32 %mul, 2
  %sprom_offset = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %do.body54.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body54.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111, i32 %div107)
  %cmp13 = icmp eq i32 %i.0111, %div107
  br i1 %cmp13, label %for.body.do.body54.sink.split_crit_edge, label %if.else

for.body.do.body54.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54.sink.split

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111, i32 %div22108)
  %cmp23 = icmp eq i32 %i.0111, %div22108
  br i1 %cmp23, label %if.else.do.body54.sink.split_crit_edge, label %if.else31

if.else.do.body54.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54.sink.split

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111, i32 %div33109)
  %cmp34 = icmp eq i32 %i.0111, %div33109
  br i1 %cmp34, label %if.else31.do.body54.sink.split_crit_edge, label %if.else42

if.else31.do.body54.sink.split_crit_edge:         ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54.sink.split

if.else42:                                        ; preds = %if.else31
  %8 = and i32 %i.0111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool43.not = icmp eq i32 %8, 0
  br i1 %tobool43.not, label %if.else42.do.body54_crit_edge, label %if.else42.do.body54.sink.split_crit_edge

if.else42.do.body54.sink.split_crit_edge:         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54.sink.split

if.else42.do.body54_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54.sink.split:                             ; preds = %if.else42.do.body54.sink.split_crit_edge, %if.else31.do.body54.sink.split_crit_edge, %if.else.do.body54.sink.split_crit_edge, %for.body.do.body54.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.31, %for.body.do.body54.sink.split_crit_edge ], [ @.str.34, %if.else.do.body54.sink.split_crit_edge ], [ @.str.37, %if.else31.do.body54.sink.split_crit_edge ], [ @.str.40, %if.else42.do.body54.sink.split_crit_edge ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink) #11
  br label %do.body54

do.body54:                                        ; preds = %do.body54.sink.split, %if.else42.do.body54_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %arrayidx = getelementptr i16, ptr %sprom, i32 %i.0111
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 4
  %14 = ptrtoint ptr %sprom_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sprom_offset, align 4
  %conv57 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv57
  %mul58 = shl nuw i32 %i.0111, 1
  %add.ptr59 = getelementptr i8, ptr %add.ptr, i32 %mul58
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr59, i16 %11) #8, !srcloc !121
  call void @msleep(i32 noundef 20) #8
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %do.body54.for.end_crit_edge, label %do.body54.for.body_crit_edge

do.body54.for.body_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body54.for.end_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body54.for.end_crit_edge, %do.end8.for.end_crit_edge
  %call60 = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 136, ptr noundef nonnull %spromctl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %for.end
  %16 = ptrtoint ptr %spromctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spromctl, align 4
  %and = and i32 %17, -17
  store i32 %and, ptr %spromctl, align 4
  %call64 = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 136, i32 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 500) #8
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end63.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.49.sink = phi ptr [ @.str.46, %if.end67 ], [ @.str.49, %entry.cleanup_crit_edge ], [ @.str.49, %if.end.cleanup_crit_edge ], [ @.str.49, %for.end.cleanup_crit_edge ], [ @.str.49, %if.end63.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end67 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call60, %for.end.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ]
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49.sink) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spromctl) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/pci.c", i32 59, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ssb_pci_switch_coreidx._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ssb_pci_switch_coreidx._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ssb/pci.c", i32 163, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ssb_pci_xtal._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @ssb_pci_xtal._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @ssb_pci_ops, !12, !"ssb_pci_ops", i1 false, i1 false}
!12 = !{!"../drivers/ssb/pci.c", i32 1107, i32 26}
!13 = !{ptr @ssb_pci_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/ssb/pci.c", i32 1170, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ssb/pci.c", i32 864, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ssb_pci_sprom_get._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ssb_pci_sprom_get._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/ssb/pci.c", i32 883, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ssb_pci_sprom_get.__UNIQUE_ID_ddebug240, !22, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!25 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ssb/pci.c", i32 908, i32 5}
!28 = !{ptr @ssb_pci_sprom_get._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ssb_pci_sprom_get._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ssb/pci.c", i32 912, i32 5}
!32 = !{ptr @ssb_pci_sprom_get.__UNIQUE_ID_ddebug241, !31, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!33 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ssb_crc8.t, !35, !"t", i1 false, i1 false}
!35 = !{!"../drivers/ssb/pci.c", i32 195, i32 18}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ssb/pci.c", i32 817, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sprom_extract.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!40 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ssb/pci.c", i32 826, i32 3}
!43 = !{ptr @sprom_extract.__UNIQUE_ID_ddebug239, !42, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ssb/pci.c", i32 843, i32 3}
!47 = !{ptr @sprom_extract._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sprom_extract._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @sprom_extract_r45.pwr_info_offset, !50, !"pwr_info_offset", i1 false, i1 false}
!50 = !{!"../drivers/ssb/pci.c", i32 471, i32 19}
!51 = !{ptr @sprom_extract_r8.pwr_info_offset, !52, !"pwr_info_offset", i1 false, i1 false}
!52 = !{!"../drivers/ssb/pci.c", i32 598, i32 19}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ssb/pci.c", i32 953, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ssb_pci_assert_buspower._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ssb_pci_assert_buspower._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ssb/pci.c", i32 1149, i32 8}
!60 = !{ptr @dev_attr_ssb_sprom, !59, !"dev_attr_ssb_sprom", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ssb/pci.c", i32 288, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sprom_do_write._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sprom_do_write._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ssb/pci.c", i32 296, i32 2}
!68 = !{ptr @sprom_do_write._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sprom_do_write._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ssb/pci.c", i32 300, i32 4}
!72 = !{ptr @sprom_do_write._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sprom_do_write._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ssb/pci.c", i32 302, i32 4}
!76 = !{ptr @sprom_do_write._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sprom_do_write._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ssb/pci.c", i32 304, i32 4}
!80 = !{ptr @sprom_do_write._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sprom_do_write._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ssb/pci.c", i32 306, i32 4}
!84 = !{ptr @sprom_do_write._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sprom_do_write._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ssb/pci.c", i32 318, i32 2}
!88 = !{ptr @sprom_do_write._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sprom_do_write._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ssb/pci.c", i32 319, i32 2}
!92 = !{ptr @sprom_do_write._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sprom_do_write._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ssb/pci.c", i32 323, i32 2}
!96 = !{ptr @sprom_do_write._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sprom_do_write._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 2148340876, i64 2148340881, i64 2148340894, i64 2148340938, i64 2148340972, i64 2148340993}
!109 = !{i64 5042959}
!110 = !{i64 2152583534}
!111 = !{i8 0, i8 2}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 5043577}
!115 = !{i64 2152582922}
!116 = !{i64 5043797}
!117 = !{i64 2152584146}
!118 = !{i64 2152584527}
!119 = !{i64 5043182}
!120 = !{i64 2152584951}
!121 = !{i64 5042759}
!122 = !{i64 2152585501}
!123 = !{i64 5043379}
!124 = !{i64 2154805484}
