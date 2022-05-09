; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/eeprom.c_pt.bc'
source_filename = "../drivers/thunderbolt/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb_eeprom_ctl = type { i32 }
%struct.tb_cap_plug_events = type { %struct.tb_cap_extended_short, i32, i32, i32, %struct.tb_eeprom_ctl, [7 x i32], i32 }
%struct.tb_cap_extended_short = type { i8, i8, i8, i8 }
%struct.tb_drom_header = type <{ i8, i64, i32, i8, i16, i16, i16, i8, i8 }>
%struct.tb_drom_entry_header = type { i8, i8 }
%struct.tb_drom_entry_generic = type { %struct.tb_drom_entry_header, [0 x i8] }
%struct.tb_drom_entry_desc = type { %struct.tb_drom_entry_header, i16, i16, i16, i16, i32, i8 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_drom_entry_port = type { %struct.tb_drom_entry_header, [3 x i8], i8, i16 }

@tb_drom_read_uid_only._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%llx: uid crc8 mismatch (expected: %#x, got: %#x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_drom_read_uid_only\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thunderbolt/eeprom.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_drom_read_uid_only._entry_ptr = internal global ptr @tb_drom_read_uid_only._entry, section ".printk_index", align 4
@tb_drom_read.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_drom_read\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%llx: reading drom (length: %#x)\0A\00", [62 x i8] zeroinitializer }, align 32
@tb_drom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 650, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%llx: drom too small, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@tb_drom_read._entry_ptr = internal global ptr @tb_drom_read._entry, section ".printk_index", align 4
@tb_drom_read._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%llx: drom size mismatch, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@tb_drom_read._entry_ptr.11 = internal global ptr @tb_drom_read._entry.9, section ".printk_index", align 4
@tb_drom_read.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.12, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llx: DROM version: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tb_drom_read._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%llx: DROM device_rom_revision %#x unknown\0A\00", [52 x i8] zeroinitializer }, align 32
@tb_drom_read._entry_ptr.15 = internal global ptr @tb_drom_read._entry.13, section ".printk_index", align 4
@tb_drom_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 686, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%llx: parsing DROM failed, retrying\0A\00", [59 x i8] zeroinitializer }, align 32
@tb_drom_read._entry_ptr.18 = internal global ptr @tb_drom_read._entry.16, section ".printk_index", align 4
@tb_eeprom_get_drom_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%llx: no TB_CAP_PLUG_EVENTS, cannot read eeprom\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tb_eeprom_get_drom_offset\00", [38 x i8] zeroinitializer }, align 32
@tb_eeprom_get_drom_offset._entry_ptr = internal global ptr @tb_eeprom_get_drom_offset._entry, section ".printk_index", align 4
@tb_eeprom_get_drom_offset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%llx: no NVM\0A\00", [18 x i8] zeroinitializer }, align 32
@tb_eeprom_get_drom_offset._entry_ptr.23 = internal global ptr @tb_eeprom_get_drom_offset._entry.21, section ".printk_index", align 4
@tb_eeprom_get_drom_offset._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%llx: drom offset is larger than 0xffff: %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@tb_eeprom_get_drom_offset._entry_ptr.26 = internal global ptr @tb_eeprom_get_drom_offset._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ThunderboltDROM\00", [16 x i8] zeroinitializer }, align 32
@usb4_drom_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%llx: DROM data CRC32 mismatch (expected: %#x, got: %#x), aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb4_drom_parse\00", [16 x i8] zeroinitializer }, align 32
@usb4_drom_parse._entry_ptr = internal global ptr @usb4_drom_parse._entry, section ".printk_index", align 4
@tb_drom_parse_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%llx: DROM buffer overrun\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_drom_parse_entries\00", [42 x i8] zeroinitializer }, align 32
@tb_drom_parse_entries._entry_ptr = internal global ptr @tb_drom_parse_entries._entry, section ".printk_index", align 4
@tb_drom_parse_entry_port.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tb_drom_parse_entry_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 372, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ignoring unnecessary extra entries in DROM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tb_drom_parse_entry_port\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tb_drom_parse_entry_port._entry_ptr = internal global ptr @tb_drom_parse_entry_port._entry, section ".printk_index", align 4
@tb_drom_parse_entry_port._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%llx: port entry has size %#x (expected %#zx)\0A\00", [49 x i8] zeroinitializer }, align 32
@tb_drom_parse_entry_port._entry_ptr.37 = internal global ptr @tb_drom_parse_entry_port._entry.35, section ".printk_index", align 4
@tb_drom_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%llx: DROM UID CRC8 mismatch (expected: %#x, got: %#x), aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tb_drom_parse\00", [18 x i8] zeroinitializer }, align 32
@tb_drom_parse._entry_ptr = internal global ptr @tb_drom_parse._entry, section ".printk_index", align 4
@tb_drom_parse._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%llx: DROM data CRC32 mismatch (expected: %#x, got: %#x), continuing\0A\00", [58 x i8] zeroinitializer }, align 32
@tb_drom_parse._entry_ptr.42 = internal global ptr @tb_drom_parse._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967212]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 315, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 648, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 650, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 665, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 669, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 676, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 686, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 143, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 152, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 157, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 446, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 583, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 418, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 372, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 389, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 555, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [32 x i8] c"../drivers/thunderbolt/eeprom.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 567, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @tb_drom_parse._entry, ptr @tb_drom_parse._entry.40, ptr @tb_drom_parse._entry_ptr, ptr @tb_drom_parse._entry_ptr.42, ptr @tb_drom_parse_entries._entry, ptr @tb_drom_parse_entries._entry_ptr, ptr @tb_drom_parse_entry_port._entry, ptr @tb_drom_parse_entry_port._entry.35, ptr @tb_drom_parse_entry_port._entry_ptr, ptr @tb_drom_parse_entry_port._entry_ptr.37, ptr @tb_drom_read._entry, ptr @tb_drom_read._entry.13, ptr @tb_drom_read._entry.16, ptr @tb_drom_read._entry.9, ptr @tb_drom_read._entry_ptr, ptr @tb_drom_read._entry_ptr.11, ptr @tb_drom_read._entry_ptr.15, ptr @tb_drom_read._entry_ptr.18, ptr @tb_drom_read_uid_only._entry, ptr @tb_drom_read_uid_only._entry_ptr, ptr @tb_eeprom_get_drom_offset._entry, ptr @tb_eeprom_get_drom_offset._entry.21, ptr @tb_eeprom_get_drom_offset._entry.24, ptr @tb_eeprom_get_drom_offset._entry_ptr, ptr @tb_eeprom_get_drom_offset._entry_ptr.23, ptr @tb_eeprom_get_drom_offset._entry_ptr.26, ptr @usb4_drom_parse._entry, ptr @usb4_drom_parse._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_read_uid_only._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_read._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_read._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_eeprom_get_drom_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_eeprom_get_drom_offset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_eeprom_get_drom_offset._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_drom_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_parse_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_parse_entry_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_parse_entry_port._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_drom_parse._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_drom_read_uid_only(ptr noundef %sw, ptr nocapture noundef writeonly %uid) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %data) #6
  %0 = getelementptr inbounds [9 x i8], ptr %data, i32 0, i32 1
  %1 = call ptr @memset(ptr %data, i32 255, i32 9)
  %call = call fastcc i32 @tb_eeprom_read_n(ptr noundef %sw, i16 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %val.05.i = phi i8 [ %xor9.7.i, %for.body.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %0, i32 %i.04.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %xor1.i = xor i8 %3, %val.05.i
  %shl.i = shl i8 %xor1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1.i)
  %tobool.not.inv.i = icmp slt i8 %xor1.i, 0
  %cond.i = select i1 %tobool.not.inv.i, i8 7, i8 0
  %xor9.i = xor i8 %cond.i, %shl.i
  %shl.1.i = shl i8 %xor9.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.i)
  %tobool.not.inv.1.i = icmp slt i8 %xor9.i, 0
  %cond.1.i = select i1 %tobool.not.inv.1.i, i8 7, i8 0
  %xor9.1.i = xor i8 %cond.1.i, %shl.1.i
  %shl.2.i = shl i8 %xor9.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.1.i)
  %tobool.not.inv.2.i = icmp slt i8 %xor9.1.i, 0
  %cond.2.i = select i1 %tobool.not.inv.2.i, i8 7, i8 0
  %xor9.2.i = xor i8 %cond.2.i, %shl.2.i
  %shl.3.i = shl i8 %xor9.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.2.i)
  %tobool.not.inv.3.i = icmp slt i8 %xor9.2.i, 0
  %cond.3.i = select i1 %tobool.not.inv.3.i, i8 7, i8 0
  %xor9.3.i = xor i8 %cond.3.i, %shl.3.i
  %shl.4.i = shl i8 %xor9.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.3.i)
  %tobool.not.inv.4.i = icmp slt i8 %xor9.3.i, 0
  %cond.4.i = select i1 %tobool.not.inv.4.i, i8 7, i8 0
  %xor9.4.i = xor i8 %cond.4.i, %shl.4.i
  %shl.5.i = shl i8 %xor9.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.4.i)
  %tobool.not.inv.5.i = icmp slt i8 %xor9.4.i, 0
  %cond.5.i = select i1 %tobool.not.inv.5.i, i8 7, i8 0
  %xor9.5.i = xor i8 %cond.5.i, %shl.5.i
  %shl.6.i = shl i8 %xor9.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.5.i)
  %tobool.not.inv.6.i = icmp slt i8 %xor9.5.i, 0
  %cond.6.i = select i1 %tobool.not.inv.6.i, i8 7, i8 0
  %xor9.6.i = xor i8 %cond.6.i, %shl.6.i
  %shl.7.i = shl i8 %xor9.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.6.i)
  %tobool.not.inv.7.i = icmp slt i8 %xor9.6.i, 0
  %cond.7.i = select i1 %tobool.not.inv.7.i, i8 7, i8 0
  %xor9.7.i = xor i8 %cond.7.i, %shl.7.i
  %inc12.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 8
  br i1 %exitcond.not.i, label %tb_crc8.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tb_crc8.exit:                                     ; preds = %for.body.i
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor9.7.i, i8 %5)
  %cmp.not = icmp eq i8 %xor9.7.i, %5
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %tb_crc8.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %xor9.7.i to i32
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %6 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %13 = lshr i64 %bf.load.i, 1
  %shl.i22 = and i64 %13, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %15 to i64
  %or.i = or i64 %shl.i22, %conv2.i
  %conv9 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i64 noundef %or.i, i32 noundef %conv9, i32 noundef %conv) #9
  br label %cleanup

if.end13:                                         ; preds = %tb_crc8.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %0, align 8
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %uid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body ], [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_eeprom_read_n(ptr noundef %sw, i16 noundef zeroext %offset, ptr nocapture noundef %val, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %ctl.i = alloca %struct.tb_eeprom_ctl, align 4
  %cap.i = alloca %struct.tb_cap_plug_events, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cap.i) #6
  %0 = call ptr @memset(ptr %cap.i, i32 255, i32 52)
  %cap_plug_events.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %1 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cap_plug_events.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %3 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %10 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %12 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i64 noundef %or.i.i) #9
  br label %tb_eeprom_get_drom_offset.exit.thread

if.end.i:                                         ; preds = %entry
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %13 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %tb_sw_read.exit.i, label %if.end.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge

if.end.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_get_drom_offset.exit.thread

tb_sw_read.exit.i:                                ; preds = %if.end.i
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %15 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %20 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %20, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %22 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %18, ptr noundef nonnull %cap.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %2, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool6.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %tb_sw_read.exit.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge

tb_sw_read.exit.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_get_drom_offset.exit.thread

if.end8.i:                                        ; preds = %tb_sw_read.exit.i
  %eeprom_ctl.i = getelementptr inbounds %struct.tb_cap_plug_events, ptr %cap.i, i32 0, i32 4
  %23 = ptrtoint ptr %eeprom_ctl.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %eeprom_ctl.i, align 1
  %24 = and i32 %bf.load.i, 83886080
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %24)
  %25 = icmp eq i32 %24, 16777216
  br i1 %25, label %if.end27.i, label %do.body15.i

do.body15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb.i.i, align 8
  %nhi21.i = getelementptr inbounds %struct.tb, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nhi21.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nhi21.i, align 4
  %pdev22.i = getelementptr inbounds %struct.tb_nhi, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pdev22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev22.i, align 4
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i56.i = load i64, ptr %route_hi.i.i.i, align 4
  %33 = lshr i64 %bf.load.i56.i, 1
  %shl.i57.i = and i64 %33, 9223372032559808512
  %34 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i59.i = zext i32 %35 to i64
  %or.i60.i = or i64 %shl.i57.i, %conv2.i59.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev23.i, ptr noundef nonnull @.str.22, i64 noundef %or.i60.i) #9
  br label %tb_eeprom_get_drom_offset.exit.thread

if.end27.i:                                       ; preds = %if.end8.i
  %drom_offset.i = getelementptr inbounds %struct.tb_cap_plug_events, ptr %cap.i, i32 0, i32 6
  %36 = ptrtoint ptr %drom_offset.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %drom_offset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %37)
  %cmp.i = icmp ugt i32 %37, 65535
  br i1 %cmp.i, label %do.body29.i, label %if.end

do.body29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tb.i.i, align 8
  %nhi35.i = getelementptr inbounds %struct.tb, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %nhi35.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nhi35.i, align 4
  %pdev36.i = getelementptr inbounds %struct.tb_nhi, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %pdev36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev36.i, align 4
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i62.i = load i64, ptr %route_hi.i.i.i, align 4
  %45 = lshr i64 %bf.load.i62.i, 1
  %shl.i63.i = and i64 %45, 9223372032559808512
  %46 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i65.i = zext i32 %47 to i64
  %or.i66.i = or i64 %shl.i63.i, %conv2.i65.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37.i, ptr noundef nonnull @.str.25, i64 noundef %or.i66.i, i32 noundef %37) #9
  br label %tb_eeprom_get_drom_offset.exit.thread

tb_eeprom_get_drom_offset.exit.thread:            ; preds = %do.body29.i, %do.body15.i, %tb_sw_read.exit.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge, %if.end.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge, %do.body.i
  %retval.0.i.ph = phi i32 [ -19, %if.end.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge ], [ %call1.i.i, %tb_sw_read.exit.i.tb_eeprom_get_drom_offset.exit.thread_crit_edge ], [ -19, %do.body.i ], [ -6, %do.body29.i ], [ -19, %do.body15.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cap.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end27.i
  %conv.i = trunc i32 %37 to i16
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cap.i) #6
  %add = add i16 %conv.i, %offset
  %call3 = call fastcc i32 @tb_eeprom_active(ptr noundef %sw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @tb_eeprom_out(ptr noundef %sw, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %48 = lshr i16 %add, 8
  %conv12 = trunc i16 %48 to i8
  %call13 = call fastcc i32 @tb_eeprom_out(ptr noundef %sw, i8 noundef zeroext %conv12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %conv17 = trunc i16 %add to i8
  %call18 = call fastcc i32 @tb_eeprom_out(ptr noundef %sw, i8 noundef zeroext %conv17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp60.not = icmp eq i32 %count, 0
  br i1 %cmp60.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %val, i32 %i.061
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl.i) #6
  %49 = ptrtoint ptr %ctl.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %ctl.i, align 4, !annotation !87
  %50 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i.i, label %tb_eeprom_ctl_read.exit.i, label %for.body.tb_eeprom_in.exit.thread_crit_edge

for.body.tb_eeprom_in.exit.thread_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

tb_eeprom_ctl_read.exit.i:                        ; preds = %for.body
  %52 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cap_plug_events.i, align 8
  %add.i.i = add i32 %53, 4
  %54 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctl.i.i.i, align 8
  %58 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %59 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %59, 9223372032559808512
  %60 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %61 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %57, ptr noundef nonnull %ctl.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i51 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i51, label %if.end.i52, label %tb_eeprom_ctl_read.exit.i.tb_eeprom_in.exit.thread_crit_edge

tb_eeprom_ctl_read.exit.i.tb_eeprom_in.exit.thread_crit_edge: ; preds = %tb_eeprom_ctl_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end.i52:                                       ; preds = %tb_eeprom_ctl_read.exit.i
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %add.ptr, align 1
  %call2.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i52.tb_eeprom_in.exit.thread_crit_edge

if.end.i52.tb_eeprom_in.exit.thread_crit_edge:    ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.i:                                        ; preds = %if.end.i52
  %63 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load.i53 = load i32, ptr %ctl.i, align 4
  %64 = lshr i32 %bf.load.i53, 28
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr, align 1
  %67 = trunc i32 %64 to i8
  %68 = and i8 %67, 1
  %conv8.i = or i8 %68, %66
  %shl.1.i = shl i8 %conv8.i, 1
  store i8 %shl.1.i, ptr %add.ptr, align 1
  %call2.1.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool3.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end5.1.i, label %if.end5.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.i.tb_eeprom_in.exit.thread_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.1.i:                                      ; preds = %if.end5.i
  %69 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load.1.i = load i32, ptr %ctl.i, align 4
  %70 = lshr i32 %bf.load.1.i, 28
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr, align 1
  %73 = trunc i32 %70 to i8
  %74 = and i8 %73, 1
  %conv8.1.i = or i8 %74, %72
  %shl.2.i = shl i8 %conv8.1.i, 1
  store i8 %shl.2.i, ptr %add.ptr, align 1
  %call2.2.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %tobool3.not.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %tobool3.not.2.i, label %if.end5.2.i, label %if.end5.1.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.1.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.2.i:                                      ; preds = %if.end5.1.i
  %75 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load.2.i = load i32, ptr %ctl.i, align 4
  %76 = lshr i32 %bf.load.2.i, 28
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr, align 1
  %79 = trunc i32 %76 to i8
  %80 = and i8 %79, 1
  %conv8.2.i = or i8 %80, %78
  %shl.3.i = shl i8 %conv8.2.i, 1
  store i8 %shl.3.i, ptr %add.ptr, align 1
  %call2.3.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3.i)
  %tobool3.not.3.i = icmp eq i32 %call2.3.i, 0
  br i1 %tobool3.not.3.i, label %if.end5.3.i, label %if.end5.2.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.2.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.3.i:                                      ; preds = %if.end5.2.i
  %81 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load.3.i = load i32, ptr %ctl.i, align 4
  %82 = lshr i32 %bf.load.3.i, 28
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr, align 1
  %85 = trunc i32 %82 to i8
  %86 = and i8 %85, 1
  %conv8.3.i = or i8 %86, %84
  %shl.4.i = shl i8 %conv8.3.i, 1
  store i8 %shl.4.i, ptr %add.ptr, align 1
  %call2.4.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.4.i)
  %tobool3.not.4.i = icmp eq i32 %call2.4.i, 0
  br i1 %tobool3.not.4.i, label %if.end5.4.i, label %if.end5.3.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.3.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.4.i:                                      ; preds = %if.end5.3.i
  %87 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %bf.load.4.i = load i32, ptr %ctl.i, align 4
  %88 = lshr i32 %bf.load.4.i, 28
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %add.ptr, align 1
  %91 = trunc i32 %88 to i8
  %92 = and i8 %91, 1
  %conv8.4.i = or i8 %92, %90
  %shl.5.i = shl i8 %conv8.4.i, 1
  store i8 %shl.5.i, ptr %add.ptr, align 1
  %call2.5.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.5.i)
  %tobool3.not.5.i = icmp eq i32 %call2.5.i, 0
  br i1 %tobool3.not.5.i, label %if.end5.5.i, label %if.end5.4.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.4.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.5.i:                                      ; preds = %if.end5.4.i
  %93 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load.5.i = load i32, ptr %ctl.i, align 4
  %94 = lshr i32 %bf.load.5.i, 28
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr, align 1
  %97 = trunc i32 %94 to i8
  %98 = and i8 %97, 1
  %conv8.5.i = or i8 %98, %96
  %shl.6.i = shl i8 %conv8.5.i, 1
  store i8 %shl.6.i, ptr %add.ptr, align 1
  %call2.6.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.6.i)
  %tobool3.not.6.i = icmp eq i32 %call2.6.i, 0
  br i1 %tobool3.not.6.i, label %if.end5.6.i, label %if.end5.5.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.5.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

if.end5.6.i:                                      ; preds = %if.end5.5.i
  %99 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load.6.i = load i32, ptr %ctl.i, align 4
  %100 = lshr i32 %bf.load.6.i, 28
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %add.ptr, align 1
  %103 = trunc i32 %100 to i8
  %104 = and i8 %103, 1
  %conv8.6.i = or i8 %104, %102
  %shl.7.i = shl i8 %conv8.6.i, 1
  store i8 %shl.7.i, ptr %add.ptr, align 1
  %call2.7.i = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.7.i)
  %tobool3.not.7.i = icmp eq i32 %call2.7.i, 0
  br i1 %tobool3.not.7.i, label %for.inc, label %if.end5.6.i.tb_eeprom_in.exit.thread_crit_edge

if.end5.6.i.tb_eeprom_in.exit.thread_crit_edge:   ; preds = %if.end5.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_eeprom_in.exit.thread

tb_eeprom_in.exit.thread:                         ; preds = %if.end5.6.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.5.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.4.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.3.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.2.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.1.i.tb_eeprom_in.exit.thread_crit_edge, %if.end5.i.tb_eeprom_in.exit.thread_crit_edge, %if.end.i52.tb_eeprom_in.exit.thread_crit_edge, %tb_eeprom_ctl_read.exit.i.tb_eeprom_in.exit.thread_crit_edge, %for.body.tb_eeprom_in.exit.thread_crit_edge
  %retval.0.i54.ph = phi i32 [ %call2.7.i, %if.end5.6.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.6.i, %if.end5.5.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.5.i, %if.end5.4.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.4.i, %if.end5.3.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.3.i, %if.end5.2.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.2.i, %if.end5.1.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.1.i, %if.end5.i.tb_eeprom_in.exit.thread_crit_edge ], [ %call2.i, %if.end.i52.tb_eeprom_in.exit.thread_crit_edge ], [ -19, %for.body.tb_eeprom_in.exit.thread_crit_edge ], [ %call1.i.i.i, %tb_eeprom_ctl_read.exit.i.tb_eeprom_in.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl.i) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end5.6.i
  %105 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load.7.i = load i32, ptr %ctl.i, align 4
  %106 = lshr i32 %bf.load.7.i, 28
  %107 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %add.ptr, align 1
  %109 = trunc i32 %106 to i8
  %110 = and i8 %109, 1
  %conv8.7.i = or i8 %110, %108
  store i8 %conv8.7.i, ptr %add.ptr, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl.i) #6
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call27 = call fastcc i32 @tb_eeprom_active(ptr noundef %sw, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tb_eeprom_in.exit.thread, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_eeprom_get_drom_offset.exit.thread
  %retval.0 = phi i32 [ %call27, %for.end ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %retval.0.i.ph, %tb_eeprom_get_drom_offset.exit.thread ], [ %retval.0.i54.ph, %tb_eeprom_in.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_drom_read(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %drom_offset.i = alloca i32, align 4
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %size, align 2, !annotation !87
  %drom = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 21
  %1 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drom, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %4 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %4, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %6 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %cmp = icmp eq i64 %or.i, 0
  br i1 %cmp, label %if.then1, label %if.end20

if.then1:                                         ; preds = %if.end
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %call.i.i)
  %13 = icmp slt i32 %call.i.i, 22
  br i1 %13, label %if.then1.if.end5_crit_edge, label %if.end8.i.i

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end8.i.i:                                      ; preds = %if.then1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call.i.i, i32 noundef 3264) #10
  %14 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %drom, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.end5_crit_edge, label %if.end6.i

if.end8.i.i.if.end5_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end6.i:                                        ; preds = %if.end8.i.i
  %call8.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev1.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %call9.i.i, i32 noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.err.i_crit_edge

if.end6.i.err.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

if.end11.i:                                       ; preds = %if.end6.i
  %15 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drom, align 4
  %data_len.i = getelementptr inbounds %struct.tb_drom_header, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %data_len.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load.i210 = load i16, ptr %data_len.i, align 1
  %bf.lshr.i = lshr i16 %bf.load.i210, 4
  %narrow.i = add nuw nsw i16 %bf.lshr.i, 13
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %narrow.i, ptr %size, align 2
  %conv14.i = zext i16 %narrow.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv14.i)
  %cmp15.i = icmp ult i32 %call.i.i, %conv14.i
  br i1 %cmp15.i, label %if.end11.i.err.i_crit_edge, label %if.end11.i.parse.preheader_crit_edge

if.end11.i.parse.preheader_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse.preheader

if.end11.i.err.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.i

err.i:                                            ; preds = %if.end11.i.err.i_crit_edge, %if.end6.i.err.i_crit_edge
  %19 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drom, align 4
  tail call void @kfree(ptr noundef %20) #6
  %21 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %drom, align 4
  br label %if.end5

if.end5:                                          ; preds = %err.i, %if.end8.i.i.if.end5_crit_edge, %if.then1.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drom_offset.i) #6
  %22 = ptrtoint ptr %drom_offset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %drom_offset.i, align 4, !annotation !87
  %dma_port.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 3
  %23 = ptrtoint ptr %dma_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_port.i, align 8
  %tobool.not.i212 = icmp eq ptr %24, null
  br i1 %tobool.not.i212, label %if.end5.if.end9_crit_edge, label %if.end.i213

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end.i213:                                      ; preds = %if.end5
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %25 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i, label %tb_sw_read.exit.i, label %if.end.i213.if.end9_crit_edge

if.end.i213.if.end9_crit_edge:                    ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

tb_sw_read.exit.i:                                ; preds = %if.end.i213
  %cap_plug_events.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %27 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap_plug_events.i, align 8
  %add.i = add i32 %28, 12
  %29 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tb.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctl.i.i, align 8
  %33 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i, align 4
  %34 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %34, 9223372032559808512
  %35 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i.i = zext i32 %36 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %32, ptr noundef nonnull %drom_offset.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool1.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %tb_sw_read.exit.i.if.end9_crit_edge

tb_sw_read.exit.i.if.end9_crit_edge:              ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end3.i:                                        ; preds = %tb_sw_read.exit.i
  %37 = ptrtoint ptr %drom_offset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drom_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i = icmp eq i32 %38, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end9_crit_edge, label %if.end6.i214

if.end3.i.if.end9_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end6.i214:                                     ; preds = %if.end3.i
  %39 = ptrtoint ptr %dma_port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_port.i, align 8
  %add8.i = add i32 %38, 14
  %call9.i = call i32 @dma_port_flash_read(ptr noundef %40, i32 noundef %add8.i, ptr noundef nonnull %size, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i214.if.end9_crit_edge

if.end6.i214.if.end9_crit_edge:                   ; preds = %if.end6.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end12.i:                                       ; preds = %if.end6.i214
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %size, align 2
  %add13.i = add i16 %42, 13
  store i16 %add13.i, ptr %size, align 2
  %conv15.i = zext i16 %add13.i to i32
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv15.i, i32 noundef 3520) #10
  %43 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i.i, ptr %drom, align 4
  %tobool18.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool18.not.i, label %if.end12.i.if.end9_crit_edge, label %if.end20.i

if.end12.i.if.end9_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end20.i:                                       ; preds = %if.end12.i
  %44 = ptrtoint ptr %dma_port.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_port.i, align 8
  %46 = ptrtoint ptr %drom_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %drom_offset.i, align 4
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size, align 2
  %conv23.i = zext i16 %49 to i32
  %call24.i = call i32 @dma_port_flash_read(ptr noundef %45, i32 noundef %47, ptr noundef nonnull %call9.i.i.i, i32 noundef %conv23.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %tb_drom_copy_nvm.exit, label %err_free.i

err_free.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %drom, align 4
  call void @kfree(ptr noundef %51) #6
  %52 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %drom, align 4
  br label %if.end9

tb_drom_copy_nvm.exit:                            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %uid.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 6
  %call28.i = call i32 @tb_drom_read_uid_only(ptr noundef %sw, ptr noundef %uid.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drom_offset.i) #6
  br label %parse.preheader

if.end9:                                          ; preds = %err_free.i, %if.end12.i.if.end9_crit_edge, %if.end6.i214.if.end9_crit_edge, %if.end3.i.if.end9_crit_edge, %tb_sw_read.exit.i.if.end9_crit_edge, %if.end.i213.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drom_offset.i) #6
  %53 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %bf.load.i220 = load i64, ptr %route_hi.i, align 4
  %bf.cast1.i = and i64 %bf.load.i220, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i = icmp eq i64 %bf.cast1.i, 32
  %uid = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 6
  br i1 %cmp.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @usb4_switch_read_uid(ptr noundef %sw, ptr noundef %uid) #6
  %call.i = call i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef 14, ptr noundef nonnull %size, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i221 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i221, label %if.end.i224, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i224:                                      ; preds = %if.then11
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %size, align 2
  %add.i222 = add i16 %55, 13
  store i16 %add.i222, ptr %size, align 2
  %conv2.i223 = zext i16 %add.i222 to i32
  %call9.i.i.i251 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv2.i223, i32 noundef 3520) #10
  %56 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call9.i.i.i251, ptr %drom, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i251, null
  br i1 %tobool5.not.i, label %if.end.i224.cleanup_crit_edge, label %if.end7.i

if.end.i224.cleanup_crit_edge:                    ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i224
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %size, align 2
  %conv9.i = zext i16 %58 to i32
  %call10.i = call i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef 0, ptr noundef nonnull %call9.i.i.i251, i32 noundef %conv9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.parse.preheader_crit_edge, label %if.then12.i

if.end7.i.parse.preheader_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse.preheader

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drom, align 4
  call void @kfree(ptr noundef %60) #6
  %61 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %drom, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 @tb_drom_read_uid_only(ptr noundef %sw, ptr noundef %uid)
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %bf.cast1.i.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i257 = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i257, label %if.then.i, label %if.end.i258

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef 14, ptr noundef nonnull %size, i32 noundef 2) #6
  br label %tb_drom_read_n.exit

if.end.i258:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call fastcc i32 @tb_eeprom_read_n(ptr noundef %sw, i16 noundef zeroext 14, ptr noundef nonnull %size, i32 noundef 2) #6
  br label %tb_drom_read_n.exit

tb_drom_read_n.exit:                              ; preds = %if.end.i258, %if.then.i
  %retval.0.i259 = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.end.i258 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i259)
  %tobool22.not = icmp eq i32 %retval.0.i259, 0
  br i1 %tobool22.not, label %if.end24, label %tb_drom_read_n.exit.cleanup_crit_edge

tb_drom_read_n.exit.cleanup_crit_edge:            ; preds = %tb_drom_read_n.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %tb_drom_read_n.exit
  %62 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size, align 2
  %64 = and i16 %63, 1023
  %narrow = add nuw nsw i16 %64, 13
  store i16 %narrow, ptr %size, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_drom_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_drom_read, %if.then33)) #6
          to label %do.end [label %if.then33], !srcloc !88

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %65 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %bf.load.i261 = load i64, ptr %route_hi.i, align 4
  %72 = lshr i64 %bf.load.i261, 1
  %shl.i262 = and i64 %72, 9223372032559808512
  %73 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %route_lo.i, align 8
  %conv2.i264 = zext i32 %74 to i64
  %or.i265 = or i64 %shl.i262, %conv2.i264
  %75 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %size, align 2
  %conv35 = zext i16 %76 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_drom_read.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %or.i265, i32 noundef %conv35) #6
  br label %do.end

do.end:                                           ; preds = %if.then33, %if.end24
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %78)
  %cmp40 = icmp ult i16 %78, 22
  br i1 %cmp40, label %do.body43, label %if.end8.i.i296

do.body43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %tb48 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %79 = ptrtoint ptr %tb48 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tb48, align 8
  %nhi49 = getelementptr inbounds %struct.tb, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %nhi49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nhi49, align 4
  %pdev50 = getelementptr inbounds %struct.tb_nhi, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev50, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %85 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %bf.load.i267 = load i64, ptr %route_hi.i, align 4
  %86 = lshr i64 %bf.load.i267, 1
  %shl.i268 = and i64 %86, 9223372032559808512
  %87 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %route_lo.i, align 8
  %conv2.i270 = zext i32 %88 to i64
  %or.i271 = or i64 %shl.i268, %conv2.i270
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51, ptr noundef nonnull @.str.8, i64 noundef %or.i271) #9
  br label %cleanup

if.end8.i.i296:                                   ; preds = %do.end
  %conv39 = zext i16 %78 to i32
  %call9.i.i295 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv39, i32 noundef 3520) #10
  %89 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call9.i.i295, ptr %drom, align 4
  %tobool60.not = icmp eq ptr %call9.i.i295, null
  br i1 %tobool60.not, label %if.end8.i.i296.cleanup_crit_edge, label %if.end62

if.end8.i.i296.cleanup_crit_edge:                 ; preds = %if.end8.i.i296
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end8.i.i296
  %90 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %size, align 2
  %conv64 = zext i16 %91 to i32
  %92 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %bf.load.i.i300 = load i64, ptr %route_hi.i, align 4
  %bf.cast1.i.i301 = and i64 %bf.load.i.i300, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i301)
  %cmp.i.i302 = icmp eq i64 %bf.cast1.i.i301, 32
  br i1 %cmp.i.i302, label %if.then.i304, label %if.end.i306

if.then.i304:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i303 = call i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef 0, ptr noundef nonnull %call9.i.i295, i32 noundef %conv64) #6
  br label %tb_drom_read_n.exit308

if.end.i306:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i305 = call fastcc i32 @tb_eeprom_read_n(ptr noundef %sw, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i295, i32 noundef %conv64) #6
  br label %tb_drom_read_n.exit308

tb_drom_read_n.exit308:                           ; preds = %if.end.i306, %if.then.i304
  %retval.0.i307 = phi i32 [ %call1.i303, %if.then.i304 ], [ %call2.i305, %if.end.i306 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i307)
  %tobool66.not = icmp eq i32 %retval.0.i307, 0
  br i1 %tobool66.not, label %tb_drom_read_n.exit308.parse.preheader_crit_edge, label %tb_drom_read_n.exit308.err_crit_edge

tb_drom_read_n.exit308.err_crit_edge:             ; preds = %tb_drom_read_n.exit308
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

tb_drom_read_n.exit308.parse.preheader_crit_edge: ; preds = %tb_drom_read_n.exit308
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse.preheader

parse.preheader:                                  ; preds = %tb_drom_read_n.exit308.parse.preheader_crit_edge, %if.end7.i.parse.preheader_crit_edge, %tb_drom_copy_nvm.exit, %if.end11.i.parse.preheader_crit_edge
  %tb104 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %uid9.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 6
  %vendor.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 8
  %device.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 9
  br label %parse

parse:                                            ; preds = %tb_drom_read_n.exit380.parse_crit_edge, %parse.preheader
  %retries.0 = phi i32 [ %dec, %tb_drom_read_n.exit380.parse_crit_edge ], [ 1, %parse.preheader ]
  %93 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %drom, align 4
  %data_len = getelementptr inbounds %struct.tb_drom_header, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %bf.load = load i16, ptr %data_len, align 1
  %bf.lshr = lshr i16 %bf.load, 4
  %narrow206 = add nuw nsw i16 %bf.lshr, 13
  %96 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow206, i16 %97)
  %cmp73.not = icmp eq i16 %narrow206, %97
  br i1 %cmp73.not, label %do.body89, label %do.body76

do.body76:                                        ; preds = %parse
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tb104, align 8
  %nhi82 = getelementptr inbounds %struct.tb, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %nhi82 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nhi82, align 4
  %pdev83 = getelementptr inbounds %struct.tb_nhi, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %pdev83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev83, align 4
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %bf.load.i310 = load i64, ptr %route_hi.i, align 4
  %105 = lshr i64 %bf.load.i310, 1
  %shl.i311 = and i64 %105, 9223372032559808512
  %106 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %route_lo.i, align 8
  %conv2.i313 = zext i32 %107 to i64
  %or.i314 = or i64 %shl.i311, %conv2.i313
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev84, ptr noundef nonnull @.str.10, i64 noundef %or.i314) #9
  br label %err

do.body89:                                        ; preds = %parse
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_drom_read.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_drom_read, %if.then103)) #6
          to label %do.end112 [label %if.then103], !srcloc !88

if.then103:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tb104, align 8
  %nhi105 = getelementptr inbounds %struct.tb, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %nhi105 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nhi105, align 4
  %pdev106 = getelementptr inbounds %struct.tb_nhi, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %pdev106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev106, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %114 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 8)
  %bf.load.i316 = load i64, ptr %route_hi.i, align 4
  %115 = lshr i64 %bf.load.i316, 1
  %shl.i317 = and i64 %115, 9223372032559808512
  %116 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %route_lo.i, align 8
  %conv2.i319 = zext i32 %117 to i64
  %or.i320 = or i64 %shl.i317, %conv2.i319
  %device_rom_revision = getelementptr inbounds %struct.tb_drom_header, ptr %94, i32 0, i32 3
  %118 = ptrtoint ptr %device_rom_revision to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %device_rom_revision, align 1
  %conv109 = zext i8 %119 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_drom_read.__UNIQUE_ID_ddebug237, ptr noundef %dev107, ptr noundef nonnull @.str.12, i64 noundef %or.i320, i32 noundef %conv109) #6
  br label %do.end112

do.end112:                                        ; preds = %if.then103, %do.body89
  %device_rom_revision115 = getelementptr inbounds %struct.tb_drom_header, ptr %94, i32 0, i32 3
  %120 = ptrtoint ptr %device_rom_revision115 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %device_rom_revision115, align 1
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values)
  switch i8 %121, label %do.body118 [
    i8 3, label %sw.bb
    i8 1, label %do.end112.sw.bb132_crit_edge
  ]

do.end112.sw.bb132_crit_edge:                     ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb132

sw.bb:                                            ; preds = %do.end112
  %123 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %drom, align 4
  %add.ptr.i = getelementptr i8, ptr %124, i32 13
  %data_len.i322 = getelementptr inbounds %struct.tb_drom_header, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %data_len.i322 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %bf.load.i323 = load i16, ptr %data_len.i322, align 1
  %bf.lshr.i324 = lshr i16 %bf.load.i323, 4
  %conv.i = zext i16 %bf.lshr.i324 to i32
  %call.i.i325 = call i32 @__crc32c_le(i32 noundef -1, ptr noundef %add.ptr.i, i32 noundef %conv.i) #11
  %neg.i.i = xor i32 %call.i.i325, -1
  %data_crc32.i = getelementptr inbounds %struct.tb_drom_header, ptr %124, i32 0, i32 2
  %126 = ptrtoint ptr %data_crc32.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %data_crc32.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %neg.i.i)
  %cmp.not.i = icmp eq i32 %127, %neg.i.i
  br i1 %cmp.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tb104, align 8
  %nhi.i327 = getelementptr inbounds %struct.tb, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %nhi.i327 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nhi.i327, align 4
  %pdev.i328 = getelementptr inbounds %struct.tb_nhi, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %pdev.i328 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev.i328, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %134 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %bf.load.i.i329 = load i64, ptr %route_hi.i, align 4
  %135 = lshr i64 %bf.load.i.i329, 1
  %shl.i.i = and i64 %135, 9223372032559808512
  %136 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i = zext i32 %137 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.28, i64 noundef %or.i.i, i32 noundef %127, i32 noundef %neg.i.i) #9
  br label %err

do.body118:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tb104, align 8
  %nhi124 = getelementptr inbounds %struct.tb, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %nhi124 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %nhi124, align 4
  %pdev125 = getelementptr inbounds %struct.tb_nhi, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %pdev125 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pdev125, align 4
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %144 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %bf.load.i334 = load i64, ptr %route_hi.i, align 4
  %145 = lshr i64 %bf.load.i334, 1
  %shl.i335 = and i64 %145, 9223372032559808512
  %146 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %route_lo.i, align 8
  %conv2.i337 = zext i32 %147 to i64
  %or.i338 = or i64 %shl.i335, %conv2.i337
  %conv129 = zext i8 %121 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev126, ptr noundef nonnull @.str.14, i64 noundef %or.i338, i32 noundef %conv129) #9
  br label %sw.bb132

sw.bb132:                                         ; preds = %do.body118, %do.end112.sw.bb132_crit_edge
  %148 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %drom, align 4
  %uid.i340 = getelementptr inbounds %struct.tb_drom_header, ptr %149, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sw.bb132
  %val.05.i.i = phi i8 [ -1, %sw.bb132 ], [ %xor9.7.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.04.i.i = phi i32 [ 0, %sw.bb132 ], [ %inc12.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %uid.i340, i32 %i.04.i.i
  %150 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i.i, align 1
  %xor1.i.i = xor i8 %151, %val.05.i.i
  %shl.i.i341 = shl i8 %xor1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1.i.i)
  %tobool.not.inv.i.i = icmp slt i8 %xor1.i.i, 0
  %cond.i.i = select i1 %tobool.not.inv.i.i, i8 7, i8 0
  %xor9.i.i = xor i8 %cond.i.i, %shl.i.i341
  %shl.1.i.i = shl i8 %xor9.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.i.i)
  %tobool.not.inv.1.i.i = icmp slt i8 %xor9.i.i, 0
  %cond.1.i.i = select i1 %tobool.not.inv.1.i.i, i8 7, i8 0
  %xor9.1.i.i = xor i8 %cond.1.i.i, %shl.1.i.i
  %shl.2.i.i = shl i8 %xor9.1.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.1.i.i)
  %tobool.not.inv.2.i.i = icmp slt i8 %xor9.1.i.i, 0
  %cond.2.i.i = select i1 %tobool.not.inv.2.i.i, i8 7, i8 0
  %xor9.2.i.i = xor i8 %cond.2.i.i, %shl.2.i.i
  %shl.3.i.i = shl i8 %xor9.2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.2.i.i)
  %tobool.not.inv.3.i.i = icmp slt i8 %xor9.2.i.i, 0
  %cond.3.i.i = select i1 %tobool.not.inv.3.i.i, i8 7, i8 0
  %xor9.3.i.i = xor i8 %cond.3.i.i, %shl.3.i.i
  %shl.4.i.i = shl i8 %xor9.3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.3.i.i)
  %tobool.not.inv.4.i.i = icmp slt i8 %xor9.3.i.i, 0
  %cond.4.i.i = select i1 %tobool.not.inv.4.i.i, i8 7, i8 0
  %xor9.4.i.i = xor i8 %cond.4.i.i, %shl.4.i.i
  %shl.5.i.i = shl i8 %xor9.4.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.4.i.i)
  %tobool.not.inv.5.i.i = icmp slt i8 %xor9.4.i.i, 0
  %cond.5.i.i = select i1 %tobool.not.inv.5.i.i, i8 7, i8 0
  %xor9.5.i.i = xor i8 %cond.5.i.i, %shl.5.i.i
  %shl.6.i.i = shl i8 %xor9.5.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.5.i.i)
  %tobool.not.inv.6.i.i = icmp slt i8 %xor9.5.i.i, 0
  %cond.6.i.i = select i1 %tobool.not.inv.6.i.i, i8 7, i8 0
  %xor9.6.i.i = xor i8 %cond.6.i.i, %shl.6.i.i
  %shl.7.i.i = shl i8 %xor9.6.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor9.6.i.i)
  %tobool.not.inv.7.i.i = icmp slt i8 %xor9.6.i.i, 0
  %cond.7.i.i = select i1 %tobool.not.inv.7.i.i, i8 7, i8 0
  %xor9.7.i.i = xor i8 %cond.7.i.i, %shl.7.i.i
  %inc12.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc12.i.i, 8
  br i1 %exitcond.not.i.i, label %tb_crc8.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

tb_crc8.exit.i:                                   ; preds = %for.body.i.i
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %149, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor9.7.i.i, i8 %153)
  %cmp.not.i342 = icmp eq i8 %xor9.7.i.i, %153
  br i1 %cmp.not.i342, label %if.end.i355, label %do.body.i353

do.body.i353:                                     ; preds = %tb_crc8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i343 = zext i8 %xor9.7.i.i to i32
  %154 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tb104, align 8
  %nhi.i345 = getelementptr inbounds %struct.tb, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %nhi.i345 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %nhi.i345, align 4
  %pdev.i346 = getelementptr inbounds %struct.tb_nhi, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %pdev.i346 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdev.i346, align 4
  %dev.i347 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  %160 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %bf.load.i.i349 = load i64, ptr %route_hi.i, align 4
  %161 = lshr i64 %bf.load.i.i349, 1
  %shl.i57.i = and i64 %161, 9223372032559808512
  %162 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i351 = zext i32 %163 to i64
  %or.i.i352 = or i64 %shl.i57.i, %conv2.i.i351
  %conv6.i = zext i8 %153 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i347, ptr noundef nonnull @.str.38, i64 noundef %or.i.i352, i32 noundef %conv6.i, i32 noundef %conv.i343) #9
  br label %err

if.end.i355:                                      ; preds = %tb_crc8.exit.i
  %164 = ptrtoint ptr %uid9.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %uid9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %tobool.not.i354 = icmp eq i64 %165, 0
  br i1 %tobool.not.i354, label %if.then10.i, label %if.end.i355.if.end13.i_crit_edge

if.end.i355.if.end13.i_crit_edge:                 ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %uid.i340 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 8)
  %167 = load i64, ptr %uid.i340, align 1
  %168 = ptrtoint ptr %uid9.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %uid9.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end.i355.if.end13.i_crit_edge
  %vendor_id.i = getelementptr inbounds %struct.tb_drom_header, ptr %149, i32 0, i32 5
  %169 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %vendor_id.i, align 1
  %171 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %vendor.i, align 4
  %model_id.i = getelementptr inbounds %struct.tb_drom_header, ptr %149, i32 0, i32 6
  %172 = ptrtoint ptr %model_id.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %model_id.i, align 1
  %174 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %device.i, align 2
  %add.ptr.i356 = getelementptr i8, ptr %149, i32 13
  %data_len.i357 = getelementptr inbounds %struct.tb_drom_header, ptr %149, i32 0, i32 4
  %175 = ptrtoint ptr %data_len.i357 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %bf.load.i358 = load i16, ptr %data_len.i357, align 1
  %bf.lshr.i359 = lshr i16 %bf.load.i358, 4
  %conv15.i360 = zext i16 %bf.lshr.i359 to i32
  %call.i.i361 = call i32 @__crc32c_le(i32 noundef -1, ptr noundef %add.ptr.i356, i32 noundef %conv15.i360) #11
  %neg.i.i362 = xor i32 %call.i.i361, -1
  %data_crc32.i363 = getelementptr inbounds %struct.tb_drom_header, ptr %149, i32 0, i32 2
  %176 = ptrtoint ptr %data_crc32.i363 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %data_crc32.i363, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %neg.i.i362)
  %cmp17.not.i = icmp eq i32 %177, %neg.i.i362
  br i1 %cmp17.not.i, label %if.end13.i.sw.epilog_crit_edge, label %do.body20.i

if.end13.i.sw.epilog_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %tb104, align 8
  %nhi26.i = getelementptr inbounds %struct.tb, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %nhi26.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %nhi26.i, align 4
  %pdev27.i = getelementptr inbounds %struct.tb_nhi, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %pdev27.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pdev27.i, align 4
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %183, i32 0, i32 44
  %184 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 8)
  %bf.load.i59.i = load i64, ptr %route_hi.i, align 4
  %185 = lshr i64 %bf.load.i59.i, 1
  %shl.i60.i = and i64 %185, 9223372032559808512
  %186 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %route_lo.i, align 8
  %conv2.i62.i = zext i32 %187 to i64
  %or.i63.i = or i64 %shl.i60.i, %conv2.i62.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28.i, ptr noundef nonnull @.str.41, i64 noundef %or.i63.i, i32 noundef %177, i32 noundef %neg.i.i362) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body20.i, %if.end13.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ 16, %sw.bb.sw.epilog_crit_edge ], [ 22, %do.body20.i ], [ 22, %if.end13.i.sw.epilog_crit_edge ]
  %call34.i = call fastcc i32 @tb_drom_parse_entries(ptr noundef %sw, i32 noundef %.sink) #6
  %188 = zext i32 %call34.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call34.i, label %sw.epilog.err_crit_edge [
    i32 -84, label %land.lhs.true
    i32 0, label %sw.epilog.cleanup_crit_edge
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

land.lhs.true:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool136.not = icmp eq i32 %retries.0, 0
  br i1 %tobool136.not, label %land.lhs.true.err_crit_edge, label %do.body138

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.body138:                                       ; preds = %land.lhs.true
  %dec = add nsw i32 %retries.0, -1
  %189 = ptrtoint ptr %tb104 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tb104, align 8
  %nhi144 = getelementptr inbounds %struct.tb, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %nhi144 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %nhi144, align 4
  %pdev145 = getelementptr inbounds %struct.tb_nhi, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %pdev145 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev145, align 4
  %dev146 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %195 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %bf.load.i366 = load i64, ptr %route_hi.i, align 4
  %196 = lshr i64 %bf.load.i366, 1
  %shl.i367 = and i64 %196, 9223372032559808512
  %197 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %route_lo.i, align 8
  %conv2.i369 = zext i32 %198 to i64
  %or.i370 = or i64 %shl.i367, %conv2.i369
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev146, ptr noundef nonnull @.str.17, i64 noundef %or.i370) #9
  call void @msleep(i32 noundef 100) #6
  %199 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %drom, align 4
  %201 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %size, align 2
  %conv151 = zext i16 %202 to i32
  %203 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 8)
  %bf.load.i.i372 = load i64, ptr %route_hi.i, align 4
  %bf.cast1.i.i373 = and i64 %bf.load.i.i372, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i373)
  %cmp.i.i374 = icmp eq i64 %bf.cast1.i.i373, 32
  br i1 %cmp.i.i374, label %if.then.i376, label %if.end.i378

if.then.i376:                                     ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i375 = call i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef 0, ptr noundef %200, i32 noundef %conv151) #6
  br label %tb_drom_read_n.exit380

if.end.i378:                                      ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i377 = call fastcc i32 @tb_eeprom_read_n(ptr noundef %sw, i16 noundef zeroext 0, ptr noundef %200, i32 noundef %conv151) #6
  br label %tb_drom_read_n.exit380

tb_drom_read_n.exit380:                           ; preds = %if.end.i378, %if.then.i376
  %retval.0.i379 = phi i32 [ %call1.i375, %if.then.i376 ], [ %call2.i377, %if.end.i378 ]
  %tobool153.not = icmp eq i32 %retval.0.i379, 0
  br i1 %tobool153.not, label %tb_drom_read_n.exit380.parse_crit_edge, label %tb_drom_read_n.exit380.err_crit_edge

tb_drom_read_n.exit380.err_crit_edge:             ; preds = %tb_drom_read_n.exit380
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

tb_drom_read_n.exit380.parse_crit_edge:           ; preds = %tb_drom_read_n.exit380
  call void @__sanitizer_cov_trace_pc() #8
  br label %parse

err:                                              ; preds = %tb_drom_read_n.exit380.err_crit_edge, %land.lhs.true.err_crit_edge, %sw.epilog.err_crit_edge, %do.body.i353, %do.body.i, %do.body76, %tb_drom_read_n.exit308.err_crit_edge
  %204 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %drom, align 4
  call void @kfree(ptr noundef %205) #6
  %206 = ptrtoint ptr %drom to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %drom, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %sw.epilog.cleanup_crit_edge, %if.end8.i.i296.cleanup_crit_edge, %do.body43, %tb_drom_read_n.exit.cleanup_crit_edge, %if.else, %if.then12.i, %if.end.i224.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %err ], [ -5, %do.body43 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %retval.0.i259, %tb_drom_read_n.exit.cleanup_crit_edge ], [ -12, %if.end8.i.i296.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.end.i224.cleanup_crit_edge ], [ 0, %if.then12.i ], [ %call34.i, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_switch_read_uid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_eeprom_active(ptr noundef readonly %sw, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %ctl = alloca %struct.tb_eeprom_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl) #6
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctl, align 4, !annotation !87
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %1 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %tb_eeprom_ctl_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_read.exit:                          ; preds = %entry
  %cap_plug_events.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %3 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap_plug_events.i, align 8
  %add.i = add i32 %4, 4
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %5 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %10 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %12 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %ctl, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %tb_eeprom_ctl_read.exit.cleanup_crit_edge

tb_eeprom_ctl_read.exit.cleanup_crit_edge:        ; preds = %tb_eeprom_ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_eeprom_ctl_read.exit
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %ctl, align 4
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %bf.set = or i32 %bf.load, 134217728
  %14 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.set, ptr %ctl, align 4
  %15 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i33 = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i33, label %tb_eeprom_ctl_write.exit, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_write.exit:                         ; preds = %if.then2
  %17 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_plug_events.i, align 8
  %add.i35 = add i32 %18, 4
  %19 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i37 = getelementptr inbounds %struct.tb, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ctl.i.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl.i.i37, align 8
  %23 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i.i.i39 = load i64, ptr %route_hi.i.i.i, align 4
  %24 = lshr i64 %bf.load.i.i.i39, 1
  %shl.i.i.i40 = and i64 %24, 9223372032559808512
  %25 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i42 = zext i32 %26 to i64
  %or.i.i.i43 = or i64 %shl.i.i.i40, %conv2.i.i.i42
  %call1.i.i44 = call i32 @tb_cfg_write(ptr noundef %22, ptr noundef nonnull %ctl, i64 noundef %or.i.i.i43, i32 noundef 0, i32 noundef 2, i32 noundef %add.i35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i44)
  %tobool4.not = icmp eq i32 %call1.i.i44, 0
  br i1 %tobool4.not, label %if.end6, label %tb_eeprom_ctl_write.exit.cleanup_crit_edge

tb_eeprom_ctl_write.exit.cleanup_crit_edge:       ; preds = %tb_eeprom_ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %tb_eeprom_ctl_write.exit
  %27 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load7 = load i32, ptr %ctl, align 4
  %bf.clear8 = and i32 %bf.load7, -1073741825
  store i32 %bf.clear8, ptr %ctl, align 4
  %28 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i48 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i48, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %bf.set13 = or i32 %bf.load, 1073741824
  %30 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set13, ptr %ctl, align 4
  %31 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i64 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i64, label %tb_eeprom_ctl_write.exit78, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_write.exit78:                       ; preds = %if.else
  %33 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cap_plug_events.i, align 8
  %add.i66 = add i32 %34, 4
  %35 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i68 = getelementptr inbounds %struct.tb, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %ctl.i.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctl.i.i68, align 8
  %39 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load.i.i.i70 = load i64, ptr %route_hi.i.i.i, align 4
  %40 = lshr i64 %bf.load.i.i.i70, 1
  %shl.i.i.i71 = and i64 %40, 9223372032559808512
  %41 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i73 = zext i32 %42 to i64
  %or.i.i.i74 = or i64 %shl.i.i.i71, %conv2.i.i.i73
  %call1.i.i75 = call i32 @tb_cfg_write(ptr noundef %38, ptr noundef nonnull %ctl, i64 noundef %or.i.i.i74, i32 noundef 0, i32 noundef 2, i32 noundef %add.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i75)
  %tobool15.not = icmp eq i32 %call1.i.i75, 0
  br i1 %tobool15.not, label %if.end17, label %tb_eeprom_ctl_write.exit78.cleanup_crit_edge

tb_eeprom_ctl_write.exit78.cleanup_crit_edge:     ; preds = %tb_eeprom_ctl_write.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %tb_eeprom_ctl_write.exit78
  %43 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load18 = load i32, ptr %ctl, align 4
  %bf.clear19 = and i32 %bf.load18, -134217729
  store i32 %bf.clear19, ptr %ctl, align 4
  %44 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i80 = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i80, label %if.end17.cleanup.sink.split_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %46 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cap_plug_events.i, align 8
  %add.i82 = add i32 %47, 4
  %48 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i84 = getelementptr inbounds %struct.tb, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ctl.i.i84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctl.i.i84, align 8
  %52 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load.i.i.i86 = load i64, ptr %route_hi.i.i.i, align 4
  %53 = lshr i64 %bf.load.i.i.i86, 1
  %shl.i.i.i87 = and i64 %53, 9223372032559808512
  %54 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i89 = zext i32 %55 to i64
  %or.i.i.i90 = or i64 %shl.i.i.i87, %conv2.i.i.i89
  %call1.i.i91 = call i32 @tb_cfg_write(ptr noundef %51, ptr noundef nonnull %ctl, i64 noundef %or.i.i.i90, i32 noundef 0, i32 noundef 2, i32 noundef %add.i82, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge, %tb_eeprom_ctl_write.exit78.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %tb_eeprom_ctl_write.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %tb_eeprom_ctl_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %tb_eeprom_ctl_read.exit.cleanup_crit_edge ], [ %call1.i.i44, %tb_eeprom_ctl_write.exit.cleanup_crit_edge ], [ %call1.i.i75, %tb_eeprom_ctl_write.exit78.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %if.end17.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then2.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ], [ %call1.i.i91, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_eeprom_out(ptr nocapture noundef readonly %sw, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %ctl = alloca %struct.tb_eeprom_ctl, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl) #6
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctl, align 4, !annotation !87
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %1 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %tb_eeprom_ctl_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_read.exit:                          ; preds = %entry
  %cap_plug_events.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %3 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap_plug_events.i, align 8
  %add.i = add i32 %4, 4
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %5 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %10 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %12 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %ctl, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %for.body.preheader, label %tb_eeprom_ctl_read.exit.cleanup_crit_edge

tb_eeprom_ctl_read.exit.cleanup_crit_edge:        ; preds = %tb_eeprom_ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %tb_eeprom_ctl_read.exit
  %conv = zext i8 %val to i32
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %ctl, align 4
  %14 = shl nuw nsw i32 %conv, 22
  %bf.shl = and i32 %14, 536870912
  %bf.clear = and i32 %bf.load, -536870913
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %ctl, align 4
  %call3 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %for.body.preheader
  %shl = shl i8 %val, 1
  %conv.1 = zext i8 %shl to i32
  %15 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.1 = load i32, ptr %ctl, align 4
  %16 = shl nuw nsw i32 %conv.1, 22
  %bf.shl.1 = and i32 %16, 536870912
  %bf.clear.1 = and i32 %bf.load.1, -536870913
  %bf.set.1 = or i32 %bf.clear.1, %bf.shl.1
  store i32 %bf.set.1, ptr %ctl, align 4
  %call3.1 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %if.end6.1, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.1:                                        ; preds = %if.end6
  %shl.1 = shl i8 %val, 2
  %conv.2 = zext i8 %shl.1 to i32
  %17 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.2 = load i32, ptr %ctl, align 4
  %18 = shl nuw nsw i32 %conv.2, 22
  %bf.shl.2 = and i32 %18, 536870912
  %bf.clear.2 = and i32 %bf.load.2, -536870913
  %bf.set.2 = or i32 %bf.clear.2, %bf.shl.2
  store i32 %bf.set.2, ptr %ctl, align 4
  %call3.2 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool4.not.2, label %if.end6.2, label %if.end6.1.cleanup_crit_edge

if.end6.1.cleanup_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.2:                                        ; preds = %if.end6.1
  %shl.2 = shl i8 %val, 3
  %conv.3 = zext i8 %shl.2 to i32
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.3 = load i32, ptr %ctl, align 4
  %20 = shl nuw nsw i32 %conv.3, 22
  %bf.shl.3 = and i32 %20, 536870912
  %bf.clear.3 = and i32 %bf.load.3, -536870913
  %bf.set.3 = or i32 %bf.clear.3, %bf.shl.3
  store i32 %bf.set.3, ptr %ctl, align 4
  %call3.3 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %tobool4.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool4.not.3, label %if.end6.3, label %if.end6.2.cleanup_crit_edge

if.end6.2.cleanup_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.3:                                        ; preds = %if.end6.2
  %shl.3 = shl i8 %val, 4
  %conv.4 = zext i8 %shl.3 to i32
  %21 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.4 = load i32, ptr %ctl, align 4
  %22 = shl nuw nsw i32 %conv.4, 22
  %bf.shl.4 = and i32 %22, 536870912
  %bf.clear.4 = and i32 %bf.load.4, -536870913
  %bf.set.4 = or i32 %bf.clear.4, %bf.shl.4
  store i32 %bf.set.4, ptr %ctl, align 4
  %call3.4 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %tobool4.not.4 = icmp eq i32 %call3.4, 0
  br i1 %tobool4.not.4, label %if.end6.4, label %if.end6.3.cleanup_crit_edge

if.end6.3.cleanup_crit_edge:                      ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.4:                                        ; preds = %if.end6.3
  %shl.4 = shl i8 %val, 5
  %conv.5 = zext i8 %shl.4 to i32
  %23 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load.5 = load i32, ptr %ctl, align 4
  %24 = shl nuw nsw i32 %conv.5, 22
  %bf.shl.5 = and i32 %24, 536870912
  %bf.clear.5 = and i32 %bf.load.5, -536870913
  %bf.set.5 = or i32 %bf.clear.5, %bf.shl.5
  store i32 %bf.set.5, ptr %ctl, align 4
  %call3.5 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %tobool4.not.5 = icmp eq i32 %call3.5, 0
  br i1 %tobool4.not.5, label %if.end6.5, label %if.end6.4.cleanup_crit_edge

if.end6.4.cleanup_crit_edge:                      ; preds = %if.end6.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.5:                                        ; preds = %if.end6.4
  %shl.5 = shl i8 %val, 6
  %conv.6 = zext i8 %shl.5 to i32
  %25 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.6 = load i32, ptr %ctl, align 4
  %26 = shl nuw nsw i32 %conv.6, 22
  %bf.shl.6 = and i32 %26, 536870912
  %bf.clear.6 = and i32 %bf.load.6, -536870913
  %bf.set.6 = or i32 %bf.clear.6, %bf.shl.6
  store i32 %bf.set.6, ptr %ctl, align 4
  %call3.6 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %tobool4.not.6 = icmp eq i32 %call3.6, 0
  br i1 %tobool4.not.6, label %if.end6.6, label %if.end6.5.cleanup_crit_edge

if.end6.5.cleanup_crit_edge:                      ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.6:                                        ; preds = %if.end6.5
  call void @__sanitizer_cov_trace_pc() #8
  %shl.6 = shl i8 %val, 7
  %conv.7 = zext i8 %shl.6 to i32
  %27 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.7 = load i32, ptr %ctl, align 4
  %28 = shl nuw nsw i32 %conv.7, 22
  %bf.clear.7 = and i32 %bf.load.7, -536870913
  %bf.set.7 = or i32 %bf.clear.7, %28
  store i32 %bf.set.7, ptr %ctl, align 4
  %call3.7 = call fastcc i32 @tb_eeprom_transfer(ptr noundef %sw, ptr noundef nonnull %ctl, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6.6, %if.end6.5.cleanup_crit_edge, %if.end6.4.cleanup_crit_edge, %if.end6.3.cleanup_crit_edge, %if.end6.2.cleanup_crit_edge, %if.end6.1.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %tb_eeprom_ctl_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %tb_eeprom_ctl_read.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call3, %for.body.preheader.cleanup_crit_edge ], [ %call3.1, %if.end6.cleanup_crit_edge ], [ %call3.2, %if.end6.1.cleanup_crit_edge ], [ %call3.3, %if.end6.2.cleanup_crit_edge ], [ %call3.4, %if.end6.3.cleanup_crit_edge ], [ %call3.5, %if.end6.4.cleanup_crit_edge ], [ %call3.6, %if.end6.5.cleanup_crit_edge ], [ %call3.7, %if.end6.6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_eeprom_transfer(ptr nocapture noundef readonly %sw, ptr noundef %ctl, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then:                                          ; preds = %entry
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %0 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %tb_eeprom_ctl_write.exit, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_write.exit:                         ; preds = %if.then
  %cap_plug_events.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %2 = ptrtoint ptr %cap_plug_events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cap_plug_events.i, align 8
  %add.i = add i32 %3, 4
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %4 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %9 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %9, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %11 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = tail call i32 @tb_cfg_write(ptr noundef %7, ptr noundef %ctl, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %tb_eeprom_ctl_write.exit.if.end2_crit_edge, label %tb_eeprom_ctl_write.exit.cleanup_crit_edge

tb_eeprom_ctl_write.exit.cleanup_crit_edge:       ; preds = %tb_eeprom_ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_write.exit.if.end2_crit_edge:       ; preds = %tb_eeprom_ctl_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.end2:                                          ; preds = %tb_eeprom_ctl_write.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  %12 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load = load i32, ptr %ctl, align 1
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %ctl, align 1
  %is_unplugged.i.i32 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %13 = ptrtoint ptr %is_unplugged.i.i32 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_unplugged.i.i32, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i33 = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i33, label %tb_eeprom_ctl_write.exit47, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_write.exit47:                       ; preds = %if.end2
  %cap_plug_events.i34 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 16
  %15 = ptrtoint ptr %cap_plug_events.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cap_plug_events.i34, align 8
  %add.i35 = add i32 %16, 4
  %tb.i.i36 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %17 = ptrtoint ptr %tb.i.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb.i.i36, align 8
  %ctl.i.i37 = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctl.i.i37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctl.i.i37, align 8
  %route_hi.i.i.i38 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %route_hi.i.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load.i.i.i39 = load i64, ptr %route_hi.i.i.i38, align 4
  %22 = lshr i64 %bf.load.i.i.i39, 1
  %shl.i.i.i40 = and i64 %22, 9223372032559808512
  %route_lo.i.i.i41 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %route_lo.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_lo.i.i.i41, align 8
  %conv2.i.i.i42 = zext i32 %24 to i64
  %or.i.i.i43 = or i64 %shl.i.i.i40, %conv2.i.i.i42
  %call1.i.i44 = tail call i32 @tb_cfg_write(ptr noundef %20, ptr noundef %ctl, i64 noundef %or.i.i.i43, i32 noundef 0, i32 noundef 2, i32 noundef %add.i35, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i44)
  %tobool4.not = icmp eq i32 %call1.i.i44, 0
  br i1 %tobool4.not, label %if.end6, label %tb_eeprom_ctl_write.exit47.cleanup_crit_edge

tb_eeprom_ctl_write.exit47.cleanup_crit_edge:     ; preds = %tb_eeprom_ctl_write.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %tb_eeprom_ctl_write.exit47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp7 = icmp eq i32 %direction, 0
  br i1 %cmp7, label %if.then8, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %25 = ptrtoint ptr %is_unplugged.i.i32 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_unplugged.i.i32, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i49 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i49, label %tb_eeprom_ctl_read.exit, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_read.exit:                          ; preds = %if.then8
  %27 = ptrtoint ptr %cap_plug_events.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap_plug_events.i34, align 8
  %add.i51 = add i32 %28, 4
  %29 = ptrtoint ptr %tb.i.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tb.i.i36, align 8
  %ctl.i.i53 = getelementptr inbounds %struct.tb, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctl.i.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctl.i.i53, align 8
  %33 = ptrtoint ptr %route_hi.i.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i.i.i55 = load i64, ptr %route_hi.i.i.i38, align 4
  %34 = lshr i64 %bf.load.i.i.i55, 1
  %shl.i.i.i56 = and i64 %34, 9223372032559808512
  %35 = ptrtoint ptr %route_lo.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i.i.i41, align 8
  %conv2.i.i.i58 = zext i32 %36 to i64
  %or.i.i.i59 = or i64 %shl.i.i.i56, %conv2.i.i.i58
  %call1.i.i60 = tail call i32 @tb_cfg_read(ptr noundef %32, ptr noundef %ctl, i64 noundef %or.i.i.i59, i32 noundef 0, i32 noundef 2, i32 noundef %add.i51, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i60)
  %tobool10.not = icmp eq i32 %call1.i.i60, 0
  br i1 %tobool10.not, label %tb_eeprom_ctl_read.exit.if.end13_crit_edge, label %tb_eeprom_ctl_read.exit.cleanup_crit_edge

tb_eeprom_ctl_read.exit.cleanup_crit_edge:        ; preds = %tb_eeprom_ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_eeprom_ctl_read.exit.if.end13_crit_edge:       ; preds = %tb_eeprom_ctl_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %tb_eeprom_ctl_read.exit.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %37 = ptrtoint ptr %ctl to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load14 = load i32, ptr %ctl, align 1
  %bf.clear15 = and i32 %bf.load14, 2147483647
  store i32 %bf.clear15, ptr %ctl, align 1
  %38 = ptrtoint ptr %is_unplugged.i.i32 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_unplugged.i.i32, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i64 = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i76, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i76:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %cap_plug_events.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_plug_events.i34, align 8
  %add.i66 = add i32 %41, 4
  %42 = ptrtoint ptr %tb.i.i36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tb.i.i36, align 8
  %ctl.i.i68 = getelementptr inbounds %struct.tb, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ctl.i.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctl.i.i68, align 8
  %46 = ptrtoint ptr %route_hi.i.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load.i.i.i70 = load i64, ptr %route_hi.i.i.i38, align 4
  %47 = lshr i64 %bf.load.i.i.i70, 1
  %shl.i.i.i71 = and i64 %47, 9223372032559808512
  %48 = ptrtoint ptr %route_lo.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %route_lo.i.i.i41, align 8
  %conv2.i.i.i73 = zext i32 %49 to i64
  %or.i.i.i74 = or i64 %shl.i.i.i71, %conv2.i.i.i73
  %call1.i.i75 = tail call i32 @tb_cfg_write(ptr noundef %45, ptr noundef %ctl, i64 noundef %or.i.i.i74, i32 noundef 0, i32 noundef 2, i32 noundef %add.i66, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i76, %if.end13.cleanup_crit_edge, %tb_eeprom_ctl_read.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %tb_eeprom_ctl_write.exit47.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %tb_eeprom_ctl_write.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i.i, %tb_eeprom_ctl_write.exit.cleanup_crit_edge ], [ %call1.i.i44, %tb_eeprom_ctl_write.exit47.cleanup_crit_edge ], [ %call1.i.i60, %tb_eeprom_ctl_read.exit.cleanup_crit_edge ], [ %call1.i.i75, %if.end.i.i76 ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ -19, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_port_flash_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_switch_drom_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_drom_parse_entries(ptr noundef %sw, i32 noundef %header_size) unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drom = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 21
  %0 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drom, align 4
  %conv = trunc i32 %header_size to i16
  %data_len = getelementptr inbounds %struct.tb_drom_header, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %bf.load = load i16, ptr %data_len, align 1
  %bf.lshr = lshr i16 %bf.load, 4
  %narrow = add nuw nsw i16 %bf.lshr, 13
  %conv4 = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %narrow, i16 %conv)
  %cmp78 = icmp ugt i16 %narrow, %conv
  br i1 %cmp78, label %while.body.lr.ph, label %entry.cleanup37_crit_edge

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

while.body.lr.ph:                                 ; preds = %entry
  %conv377 = and i32 %header_size, 65535
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %vendor.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 8
  %device.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 9
  %device_name.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 11
  %vendor_name.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %conv380 = phi i32 [ %conv377, %while.body.lr.ph ], [ %conv3, %cleanup.while.body_crit_edge ]
  %pos.079 = phi i16 [ %conv, %while.body.lr.ph ], [ %add35, %cleanup.while.body_crit_edge ]
  %3 = ptrtoint ptr %drom to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drom, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %conv380
  %add10 = add nuw nsw i32 %conv380, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %conv4)
  %cmp12 = icmp eq i32 %add10, %conv4
  br i1 %cmp12, label %while.body.do.body_crit_edge, label %lor.lhs.false

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %while.body
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %conv15 = zext i8 %6 to i32
  %add16 = add nuw nsw i32 %conv380, %conv15
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %conv4)
  %cmp18 = icmp ugt i32 %add16, %conv4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %or.cond = select i1 %cmp18, i1 true, i1 %tobool.not
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %while.body.do.body_crit_edge
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %14 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %14, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %16 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, i64 noundef %or.i) #9
  br label %cleanup37

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.tb_drom_entry_header, ptr %add.ptr, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load25 = load i8, ptr %type, align 1
  %18 = and i8 %bf.load25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %trunc.not = icmp eq i8 %18, 0
  br i1 %trunc.not, label %sw.bb, label %sw.bb27

sw.bb:                                            ; preds = %if.end
  %bf.lshr.i = lshr i8 %bf.load25, 2
  %conv.i = zext i8 %bf.lshr.i to i32
  %19 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %conv.i, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 9, label %sw.bb15.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.tb_drom_entry_generic, ptr %add.ptr, i32 0, i32 1
  %sub.i = add nsw i32 %conv15, -2
  %call.i = call ptr @kstrndup(ptr noundef %data.i, i32 noundef %sub.i, i32 noundef 3264) #6
  %20 = ptrtoint ptr %vendor_name.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %vendor_name.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup37_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.cleanup37_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

sw.bb4.i:                                         ; preds = %sw.bb
  %data5.i = getelementptr inbounds %struct.tb_drom_entry_generic, ptr %add.ptr, i32 0, i32 1
  %sub9.i = add nsw i32 %conv15, -2
  %call10.i = call ptr @kstrndup(ptr noundef %data5.i, i32 noundef %sub9.i, i32 noundef 3264) #6
  %21 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10.i, ptr %device_name.i, align 4
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %sw.bb4.i.cleanup37_crit_edge, label %sw.bb4.i.cleanup_crit_edge

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.i.cleanup37_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

sw.bb15.i:                                        ; preds = %sw.bb
  %22 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not.i = icmp eq i16 %23, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %sw.bb15.i.cleanup_crit_edge

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb15.i
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool17.not.i = icmp eq i16 %25, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %idVendor.i = getelementptr inbounds %struct.tb_drom_entry_desc, ptr %add.ptr, i32 0, i32 2
  %26 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idVendor.i, align 4
  %28 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vendor.i, align 4
  %idProduct.i = getelementptr inbounds %struct.tb_drom_entry_desc, ptr %add.ptr, i32 0, i32 3
  %29 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct.i, align 2
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %device.i, align 2
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #6
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %type.i, align 4, !annotation !87
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i62 = load i8, ptr %type, align 1
  %bf.lshr.i63 = lshr i8 %bf.load.i62, 2
  %conv.i64 = zext i8 %bf.lshr.i63 to i32
  %34 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load1.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr2.i = lshr i32 %bf.load1.i, 12
  %bf.clear.i = and i32 %bf.lshr2.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i, i32 %conv.i64)
  %cmp.i = icmp ult i32 %bf.clear.i, %conv.i64
  br i1 %cmp.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %sw.bb27
  %.b83.i = load i1, ptr @tb_drom_parse_entry_port.__print_once, align 1
  br i1 %.b83.i, label %do.body.i.sw.epilog.thread71_crit_edge, label %if.then4.i

do.body.i.sw.epilog.thread71_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread71

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tb_drom_parse_entry_port.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %sw, ptr noundef nonnull @.str.32) #9
  br label %sw.epilog.thread71

if.end8.i:                                        ; preds = %sw.bb27
  %35 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ports.i, align 4
  %37 = and i8 %bf.load.i62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %bf.cast.not.i = icmp eq i8 %37, 0
  %disabled.i = getelementptr %struct.tb_port, ptr %36, i32 %conv.i64, i32 10
  %.lobit.i = lshr exact i8 %37, 1
  %38 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %.lobit.i, ptr %disabled.i, align 1
  br i1 %bf.cast.not.i, label %if.end18.i, label %if.end8.i.sw.epilog.thread71_crit_edge

if.end8.i.sw.epilog.thread71_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread71

if.end18.i:                                       ; preds = %if.end8.i
  %sw.i.i = getelementptr %struct.tb_port, ptr %36, i32 %conv.i64, i32 1
  %39 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_unplugged.i.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %if.end18.i.sw.epilog_crit_edge

if.end18.i.sw.epilog_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

tb_port_read.exit.i:                              ; preds = %if.end18.i
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %48 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %48, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %50 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr %struct.tb_port, ptr %36, i32 %conv.i64, i32 9
  %51 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %52 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %46, ptr noundef nonnull %type.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool19.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %tb_port_read.exit.i.sw.epilog_crit_edge

tb_port_read.exit.i.sw.epilog_crit_edge:          ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end21.i:                                       ; preds = %tb_port_read.exit.i
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  %and.i = and i32 %54, 16777215
  store i32 %and.i, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp22.i = icmp eq i32 %and.i, 1
  br i1 %cmp22.i, label %if.then24.i, label %if.end21.i.sw.epilog.thread71_crit_edge

if.end21.i.sw.epilog.thread71_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread71

if.then24.i:                                      ; preds = %if.end21.i
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp27.not.i = icmp eq i8 %56, 8
  br i1 %cmp27.not.i, label %if.end40.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %57 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %64 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %64, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %66 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %conv37.i = zext i8 %56 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev34.i, ptr noundef nonnull @.str.36, i64 noundef %or.i.i, i32 noundef %conv37.i, i32 noundef 8) #9
  br label %sw.epilog

if.end40.i:                                       ; preds = %if.then24.i
  %link_nr.i = getelementptr inbounds %struct.tb_drom_entry_port, ptr %add.ptr, i32 0, i32 1
  %67 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 3)
  %bf.load41.i = load i24, ptr %link_nr.i, align 1
  %link_nr45.i = getelementptr %struct.tb_port, ptr %36, i32 %conv.i64, i32 13
  %68 = ptrtoint ptr %link_nr45.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load46.i = load i8, ptr %link_nr45.i, align 4
  %sh.diff.i = lshr i24 %bf.load41.i, 12
  %tr.sh.diff.i = trunc i24 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, -128
  %bf.clear47.i = and i8 %bf.load46.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear47.i
  store i8 %bf.set.i, ptr %link_nr45.i, align 4
  %bf.load48.i = load i24, ptr %link_nr.i, align 1
  %69 = and i24 %bf.load48.i, 65536
  %bf.cast51.not.i = icmp eq i24 %69, 0
  br i1 %bf.cast51.not.i, label %if.end40.i.sw.epilog.thread71_crit_edge, label %if.then52.i

if.end40.i.sw.epilog.thread71_crit_edge:          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread71

if.then52.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sw.i.i, align 4
  %ports54.i = getelementptr inbounds %struct.tb_switch, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %ports54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ports54.i, align 4
  %bf.lshr56.i = lshr i24 %bf.load48.i, 10
  %74 = and i24 %bf.lshr56.i, 63
  %bf.cast58.i = zext i24 %74 to i32
  %arrayidx60.i = getelementptr %struct.tb_port, ptr %73, i32 %bf.cast58.i
  %dual_link_port.i = getelementptr %struct.tb_port, ptr %36, i32 %conv.i64, i32 12
  %75 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx60.i, ptr %dual_link_port.i, align 4
  br label %sw.epilog.thread71

sw.epilog.thread71:                               ; preds = %if.then52.i, %if.end40.i.sw.epilog.thread71_crit_edge, %if.end21.i.sw.epilog.thread71_crit_edge, %if.end8.i.sw.epilog.thread71_crit_edge, %if.then4.i, %do.body.i.sw.epilog.thread71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #6
  br label %cleanup

sw.epilog:                                        ; preds = %do.body30.i, %tb_port_read.exit.i.sw.epilog_crit_edge, %if.end18.i.sw.epilog_crit_edge
  %retval.1.i = phi i32 [ -5, %do.body30.i ], [ -19, %if.end18.i.sw.epilog_crit_edge ], [ %call4.i.i, %tb_port_read.exit.i.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #6
  br label %cleanup37

cleanup:                                          ; preds = %sw.epilog.thread71, %if.then18.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb15.i.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %add.ptr, align 1
  %conv33 = zext i8 %77 to i16
  %add35 = add i16 %pos.079, %conv33
  %conv3 = zext i16 %add35 to i32
  %cmp = icmp ult i16 %add35, %narrow
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup37_crit_edge

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup37:                                        ; preds = %cleanup.cleanup37_crit_edge, %sw.epilog, %sw.bb4.i.cleanup37_crit_edge, %sw.bb.i.cleanup37_crit_edge, %do.body, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ %retval.1.i, %sw.epilog ], [ -84, %do.body ], [ 0, %entry.cleanup37_crit_edge ], [ 0, %cleanup.cleanup37_crit_edge ], [ -12, %sw.bb.i.cleanup37_crit_edge ], [ -12, %sw.bb4.i.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @__crc32c_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/eeprom.c", i32 315, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tb_drom_read_uid_only._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tb_drom_read_uid_only._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/eeprom.c", i32 648, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tb_drom_read.__UNIQUE_ID_ddebug236, !9, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/eeprom.c", i32 650, i32 3}
!15 = !{ptr @tb_drom_read._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @tb_drom_read._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/eeprom.c", i32 665, i32 3}
!19 = !{ptr @tb_drom_read._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tb_drom_read._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/eeprom.c", i32 669, i32 2}
!23 = !{ptr @tb_drom_read.__UNIQUE_ID_ddebug237, !22, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thunderbolt/eeprom.c", i32 676, i32 3}
!26 = !{ptr @tb_drom_read._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tb_drom_read._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thunderbolt/eeprom.c", i32 686, i32 3}
!30 = !{ptr @tb_drom_read._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tb_drom_read._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/eeprom.c", i32 143, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tb_eeprom_get_drom_offset._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tb_eeprom_get_drom_offset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thunderbolt/eeprom.c", i32 152, i32 3}
!39 = !{ptr @tb_eeprom_get_drom_offset._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tb_eeprom_get_drom_offset._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thunderbolt/eeprom.c", i32 157, i32 3}
!43 = !{ptr @tb_eeprom_get_drom_offset._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tb_eeprom_get_drom_offset._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/eeprom.c", i32 446, i32 38}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/eeprom.c", i32 583, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @usb4_drom_parse._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @usb4_drom_parse._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thunderbolt/eeprom.c", i32 418, i32 4}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tb_drom_parse_entries._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tb_drom_parse_entries._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"__print_once", i1 false, i1 false}
!58 = !{!"../drivers/thunderbolt/eeprom.c", i32 372, i32 3}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tb_drom_parse_entry_port._entry, !58, !"_entry", i1 false, i1 false}
!63 = !{ptr @tb_drom_parse_entry_port._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thunderbolt/eeprom.c", i32 389, i32 4}
!66 = !{ptr @tb_drom_parse_entry_port._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tb_drom_parse_entry_port._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thunderbolt/eeprom.c", i32 555, i32 3}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tb_drom_parse._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tb_drom_parse._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thunderbolt/eeprom.c", i32 567, i32 3}
!75 = !{ptr @tb_drom_parse._entry.40, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tb_drom_parse._entry_ptr.42, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
!87 = !{!"auto-init"}
!88 = !{i64 2148776444, i64 2148776449, i64 2148776462, i64 2148776506, i64 2148776540, i64 2148776561}
