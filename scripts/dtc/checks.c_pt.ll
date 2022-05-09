; ModuleID = '/llk/IR_all_yes/scripts/dtc/checks.c_pt.bc'
source_filename = "../scripts/dtc/checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { ptr, ptr, ptr, i8, i8, i32, i8, i32, ptr }
%struct.bus_type = type { ptr }
%struct.provider = type { ptr, ptr, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.data = type { i32, ptr, ptr }
%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%struct.label = type { i8, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"no_\00", align 1
@check_table = internal unnamed_addr constant [89 x ptr] [ptr @duplicate_node_names, ptr @duplicate_property_names, ptr @node_name_chars, ptr @node_name_format, ptr @property_name_chars, ptr @name_is_string, ptr @name_properties, ptr @node_name_vs_property_name, ptr @duplicate_label, ptr @explicit_phandles, ptr @phandle_references, ptr @path_references, ptr @omit_unused_nodes, ptr @address_cells_is_cell, ptr @size_cells_is_cell, ptr @device_type_is_string, ptr @model_is_string, ptr @status_is_string, ptr @label_is_string, ptr @compatible_is_string_list, ptr @names_is_string_list, ptr @property_name_chars_strict, ptr @node_name_chars_strict, ptr @addr_size_cells, ptr @reg_format, ptr @ranges_format, ptr @dma_ranges_format, ptr @unit_address_vs_reg, ptr @unit_address_format, ptr @pci_bridge, ptr @pci_device_reg, ptr @pci_device_bus_num, ptr @simple_bus_bridge, ptr @simple_bus_reg, ptr @i2c_bus_bridge, ptr @i2c_bus_reg, ptr @spi_bus_bridge, ptr @spi_bus_reg, ptr @avoid_default_addr_size, ptr @avoid_unnecessary_addr_size, ptr @unique_unit_address, ptr @unique_unit_address_if_enabled, ptr @obsolete_chosen_interrupt_controller, ptr @chosen_node_is_root, ptr @chosen_node_bootargs, ptr @chosen_node_stdout_path, ptr @clocks_property, ptr @clocks_is_cell, ptr @cooling_device_property, ptr @cooling_device_is_cell, ptr @dmas_property, ptr @dmas_is_cell, ptr @hwlocks_property, ptr @hwlocks_is_cell, ptr @interrupts_extended_property, ptr @interrupts_extended_is_cell, ptr @io_channels_property, ptr @io_channels_is_cell, ptr @iommus_property, ptr @iommus_is_cell, ptr @mboxes_property, ptr @mboxes_is_cell, ptr @msi_parent_property, ptr @msi_parent_is_cell, ptr @mux_controls_property, ptr @mux_controls_is_cell, ptr @phys_property, ptr @phys_is_cell, ptr @power_domains_property, ptr @power_domains_is_cell, ptr @pwms_property, ptr @pwms_is_cell, ptr @resets_property, ptr @resets_is_cell, ptr @sound_dai_property, ptr @sound_dai_is_cell, ptr @thermal_sensors_property, ptr @thermal_sensors_is_cell, ptr @deprecated_gpio_property, ptr @gpios_property, ptr @interrupts_property, ptr @interrupt_provider, ptr @interrupt_map, ptr @alias_paths, ptr @graph_nodes, ptr @graph_child_address, ptr @graph_port, ptr @graph_endpoint, ptr @always_fail], align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"Unrecognized check name \22%s\22\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"ERROR: Input tree has errors, aborting (use -f to force output)\0A\00", align 1
@quiet = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Warning: Input tree has errors, output forced\0A\00", align 1
@duplicate_node_names = internal global %struct.check { ptr @.str.5, ptr @check_duplicate_node_names, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_node_names_prereqs }, align 8
@duplicate_property_names = internal global %struct.check { ptr @.str.17, ptr @check_duplicate_property_names, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_property_names_prereqs }, align 8
@node_name_chars = internal global %struct.check { ptr @.str.19, ptr @check_node_name_chars, ptr @.str.20, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @node_name_chars_prereqs }, align 8
@node_name_format = internal global %struct.check { ptr @.str.22, ptr @check_node_name_format, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @node_name_format_prereqs }, align 8
@property_name_chars = internal global %struct.check { ptr @.str.24, ptr @check_property_name_chars, ptr @.str.25, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @property_name_chars_prereqs }, align 8
@name_is_string = internal global %struct.check { ptr @.str.27, ptr @check_is_string, ptr @.str.28, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @name_is_string_prereqs }, align 8
@name_properties = internal global %struct.check { ptr @.str.30, ptr @check_name_properties, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @name_properties_prereqs }, align 8
@node_name_vs_property_name = internal global %struct.check { ptr @.str.32, ptr @check_node_name_vs_property_name, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @node_name_vs_property_name_prereqs }, align 8
@duplicate_label = internal global %struct.check { ptr @.str.34, ptr @check_duplicate_label_node, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_label_prereqs }, align 8
@explicit_phandles = internal global %struct.check { ptr @.str.40, ptr @check_explicit_phandles, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @explicit_phandles_prereqs }, align 8
@phandle_references = internal global %struct.check { ptr @.str.51, ptr @fixup_phandle_references, ptr null, i8 0, i8 1, i32 0, i8 0, i32 2, ptr @phandle_references_prereqs }, align 8
@path_references = internal global %struct.check { ptr @.str.54, ptr @fixup_path_references, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @path_references_prereqs }, align 8
@omit_unused_nodes = internal global %struct.check { ptr @.str.56, ptr @fixup_omit_unused_nodes, ptr null, i8 0, i8 1, i32 0, i8 0, i32 2, ptr @omit_unused_nodes_prereqs }, align 8
@address_cells_is_cell = internal global %struct.check { ptr @.str.57, ptr @check_is_cell, ptr @.str.58, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @address_cells_is_cell_prereqs }, align 8
@size_cells_is_cell = internal global %struct.check { ptr @.str.60, ptr @check_is_cell, ptr @.str.61, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @size_cells_is_cell_prereqs }, align 8
@device_type_is_string = internal global %struct.check { ptr @.str.62, ptr @check_is_string, ptr @.str.63, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @device_type_is_string_prereqs }, align 8
@model_is_string = internal global %struct.check { ptr @.str.64, ptr @check_is_string, ptr @.str.65, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @model_is_string_prereqs }, align 8
@status_is_string = internal global %struct.check { ptr @.str.66, ptr @check_is_string, ptr @.str.67, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @status_is_string_prereqs }, align 8
@label_is_string = internal global %struct.check { ptr @.str.68, ptr @check_is_string, ptr @.str.69, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @label_is_string_prereqs }, align 8
@compatible_is_string_list = internal global %struct.check { ptr @.str.70, ptr @check_is_string_list, ptr @.str.71, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @compatible_is_string_list_prereqs }, align 8
@names_is_string_list = internal global %struct.check { ptr @.str.73, ptr @check_names_is_string_list, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @names_is_string_list_prereqs }, align 8
@property_name_chars_strict = internal global %struct.check { ptr @.str.75, ptr @check_property_name_chars_strict, ptr @.str.76, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @property_name_chars_strict_prereqs }, align 8
@node_name_chars_strict = internal global %struct.check { ptr @.str.78, ptr @check_node_name_chars_strict, ptr @.str.76, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @node_name_chars_strict_prereqs }, align 8
@addr_size_cells = internal global %struct.check { ptr @.str.80, ptr @fixup_addr_size_cells, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @addr_size_cells_prereqs }, align 8
@reg_format = internal global %struct.check { ptr @.str.81, ptr @check_reg_format, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @reg_format_prereqs }, align 8
@ranges_format = internal global %struct.check { ptr @.str.86, ptr @check_ranges_format, ptr @.str.87, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @ranges_format_prereqs }, align 8
@dma_ranges_format = internal global %struct.check { ptr @.str.92, ptr @check_ranges_format, ptr @.str.93, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @dma_ranges_format_prereqs }, align 8
@unit_address_vs_reg = internal global %struct.check { ptr @.str.94, ptr @check_unit_address_vs_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @unit_address_vs_reg_prereqs }, align 8
@unit_address_format = internal global %struct.check { ptr @.str.98, ptr @check_unit_address_format, ptr null, i8 1, i8 0, i32 0, i8 0, i32 3, ptr @unit_address_format_prereqs }, align 8
@pci_bridge = internal global %struct.check { ptr @.str.102, ptr @check_pci_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_bridge_prereqs }, align 8
@pci_device_reg = internal global %struct.check { ptr @.str.114, ptr @check_pci_device_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_device_reg_prereqs }, align 8
@pci_device_bus_num = internal global %struct.check { ptr @.str.121, ptr @check_pci_device_bus_num, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_device_bus_num_prereqs }, align 8
@simple_bus_bridge = internal global %struct.check { ptr @.str.123, ptr @check_simple_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @simple_bus_bridge_prereqs }, align 8
@simple_bus_reg = internal global %struct.check { ptr @.str.125, ptr @check_simple_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @simple_bus_reg_prereqs }, align 8
@i2c_bus_bridge = internal global %struct.check { ptr @.str.129, ptr @check_i2c_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @i2c_bus_bridge_prereqs }, align 8
@i2c_bus_reg = internal global %struct.check { ptr @.str.135, ptr @check_i2c_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @i2c_bus_reg_prereqs }, align 8
@spi_bus_bridge = internal global %struct.check { ptr @.str.140, ptr @check_spi_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @spi_bus_bridge_prereqs }, align 8
@spi_bus_reg = internal global %struct.check { ptr @.str.148, ptr @check_spi_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @spi_bus_reg_prereqs }, align 8
@avoid_default_addr_size = internal global %struct.check { ptr @.str.150, ptr @check_avoid_default_addr_size, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @avoid_default_addr_size_prereqs }, align 8
@avoid_unnecessary_addr_size = internal global %struct.check { ptr @.str.153, ptr @check_avoid_unnecessary_addr_size, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @avoid_unnecessary_addr_size_prereqs }, align 8
@unique_unit_address = internal global %struct.check { ptr @.str.155, ptr @check_unique_unit_address, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @unique_unit_address_prereqs }, align 8
@unique_unit_address_if_enabled = internal global %struct.check { ptr @.str.158, ptr @check_unique_unit_address_if_enabled, ptr null, i8 0, i8 0, i32 0, i8 0, i32 1, ptr @unique_unit_address_if_enabled_prereqs }, align 8
@obsolete_chosen_interrupt_controller = internal global %struct.check { ptr @.str.159, ptr @check_obsolete_chosen_interrupt_controller, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @obsolete_chosen_interrupt_controller_prereqs }, align 8
@chosen_node_is_root = internal global %struct.check { ptr @.str.163, ptr @check_chosen_node_is_root, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_is_root_prereqs }, align 8
@chosen_node_bootargs = internal global %struct.check { ptr @.str.166, ptr @check_chosen_node_bootargs, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_bootargs_prereqs }, align 8
@chosen_node_stdout_path = internal global %struct.check { ptr @.str.168, ptr @check_chosen_node_stdout_path, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_stdout_path_prereqs }, align 8
@clocks_property = internal global %struct.check { ptr @.str.172, ptr @check_provider_cells_property, ptr @clocks_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @clocks_property_prereqs }, align 8
@clocks_is_cell = internal global %struct.check { ptr @.str.180, ptr @check_is_cell, ptr @.str.179, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @clocks_is_cell_prereqs }, align 8
@cooling_device_property = internal global %struct.check { ptr @.str.181, ptr @check_provider_cells_property, ptr @cooling_device_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @cooling_device_property_prereqs }, align 8
@cooling_device_is_cell = internal global %struct.check { ptr @.str.184, ptr @check_is_cell, ptr @.str.183, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @cooling_device_is_cell_prereqs }, align 8
@dmas_property = internal global %struct.check { ptr @.str.185, ptr @check_provider_cells_property, ptr @dmas_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @dmas_property_prereqs }, align 8
@dmas_is_cell = internal global %struct.check { ptr @.str.188, ptr @check_is_cell, ptr @.str.187, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @dmas_is_cell_prereqs }, align 8
@hwlocks_property = internal global %struct.check { ptr @.str.189, ptr @check_provider_cells_property, ptr @hwlocks_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @hwlocks_property_prereqs }, align 8
@hwlocks_is_cell = internal global %struct.check { ptr @.str.192, ptr @check_is_cell, ptr @.str.191, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @hwlocks_is_cell_prereqs }, align 8
@interrupts_extended_property = internal global %struct.check { ptr @.str.193, ptr @check_provider_cells_property, ptr @interrupts_extended_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @interrupts_extended_property_prereqs }, align 8
@interrupts_extended_is_cell = internal global %struct.check { ptr @.str.196, ptr @check_is_cell, ptr @.str.195, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @interrupts_extended_is_cell_prereqs }, align 8
@io_channels_property = internal global %struct.check { ptr @.str.197, ptr @check_provider_cells_property, ptr @io_channels_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @io_channels_property_prereqs }, align 8
@io_channels_is_cell = internal global %struct.check { ptr @.str.200, ptr @check_is_cell, ptr @.str.199, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @io_channels_is_cell_prereqs }, align 8
@iommus_property = internal global %struct.check { ptr @.str.201, ptr @check_provider_cells_property, ptr @iommus_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @iommus_property_prereqs }, align 8
@iommus_is_cell = internal global %struct.check { ptr @.str.204, ptr @check_is_cell, ptr @.str.203, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @iommus_is_cell_prereqs }, align 8
@mboxes_property = internal global %struct.check { ptr @.str.205, ptr @check_provider_cells_property, ptr @mboxes_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @mboxes_property_prereqs }, align 8
@mboxes_is_cell = internal global %struct.check { ptr @.str.208, ptr @check_is_cell, ptr @.str.207, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @mboxes_is_cell_prereqs }, align 8
@msi_parent_property = internal global %struct.check { ptr @.str.209, ptr @check_provider_cells_property, ptr @msi_parent_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @msi_parent_property_prereqs }, align 8
@msi_parent_is_cell = internal global %struct.check { ptr @.str.212, ptr @check_is_cell, ptr @.str.211, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @msi_parent_is_cell_prereqs }, align 8
@mux_controls_property = internal global %struct.check { ptr @.str.213, ptr @check_provider_cells_property, ptr @mux_controls_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @mux_controls_property_prereqs }, align 8
@mux_controls_is_cell = internal global %struct.check { ptr @.str.216, ptr @check_is_cell, ptr @.str.215, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @mux_controls_is_cell_prereqs }, align 8
@phys_property = internal global %struct.check { ptr @.str.217, ptr @check_provider_cells_property, ptr @phys_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @phys_property_prereqs }, align 8
@phys_is_cell = internal global %struct.check { ptr @.str.220, ptr @check_is_cell, ptr @.str.219, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @phys_is_cell_prereqs }, align 8
@power_domains_property = internal global %struct.check { ptr @.str.221, ptr @check_provider_cells_property, ptr @power_domains_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @power_domains_property_prereqs }, align 8
@power_domains_is_cell = internal global %struct.check { ptr @.str.224, ptr @check_is_cell, ptr @.str.223, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @power_domains_is_cell_prereqs }, align 8
@pwms_property = internal global %struct.check { ptr @.str.225, ptr @check_provider_cells_property, ptr @pwms_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pwms_property_prereqs }, align 8
@pwms_is_cell = internal global %struct.check { ptr @.str.228, ptr @check_is_cell, ptr @.str.227, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @pwms_is_cell_prereqs }, align 8
@resets_property = internal global %struct.check { ptr @.str.229, ptr @check_provider_cells_property, ptr @resets_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @resets_property_prereqs }, align 8
@resets_is_cell = internal global %struct.check { ptr @.str.232, ptr @check_is_cell, ptr @.str.231, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @resets_is_cell_prereqs }, align 8
@sound_dai_property = internal global %struct.check { ptr @.str.233, ptr @check_provider_cells_property, ptr @sound_dai_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @sound_dai_property_prereqs }, align 8
@sound_dai_is_cell = internal global %struct.check { ptr @.str.236, ptr @check_is_cell, ptr @.str.235, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @sound_dai_is_cell_prereqs }, align 8
@thermal_sensors_property = internal global %struct.check { ptr @.str.237, ptr @check_provider_cells_property, ptr @thermal_sensors_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @thermal_sensors_property_prereqs }, align 8
@thermal_sensors_is_cell = internal global %struct.check { ptr @.str.240, ptr @check_is_cell, ptr @.str.239, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @thermal_sensors_is_cell_prereqs }, align 8
@deprecated_gpio_property = internal global %struct.check { ptr @.str.241, ptr @check_deprecated_gpio_property, ptr null, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @deprecated_gpio_property_prereqs }, align 8
@gpios_property = internal global %struct.check { ptr @.str.248, ptr @check_gpios_property, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @gpios_property_prereqs }, align 8
@interrupts_property = internal global %struct.check { ptr @.str.251, ptr @check_interrupts_property, ptr @phandle_references, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @interrupts_property_prereqs }, align 8
@interrupt_provider = internal global %struct.check { ptr @.str.261, ptr @check_interrupt_provider, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @interrupt_provider_prereqs }, align 8
@interrupt_map = internal global %struct.check { ptr @.str.264, ptr @check_interrupt_map, ptr null, i8 1, i8 0, i32 0, i8 0, i32 3, ptr @interrupt_map_prereqs }, align 8
@alias_paths = internal global %struct.check { ptr @.str.272, ptr @check_alias_paths, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @alias_paths_prereqs }, align 8
@graph_nodes = internal global %struct.check { ptr @.str.277, ptr @check_graph_nodes, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @graph_nodes_prereqs }, align 8
@graph_child_address = internal global %struct.check { ptr @.str.283, ptr @check_graph_child_address, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_child_address_prereqs }, align 8
@graph_port = internal global %struct.check { ptr @.str.285, ptr @check_graph_port, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_port_prereqs }, align 8
@graph_endpoint = internal global %struct.check { ptr @.str.292, ptr @check_graph_endpoint, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_endpoint_prereqs }, align 8
@always_fail = internal global %struct.check { ptr @.str.296, ptr @check_always_fail, ptr null, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @always_fail_prereqs }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"duplicate_node_names\00", align 1
@duplicate_node_names_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Duplicate node name\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c": %s (%s): \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s:%s: \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  also defined at %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"duplicate_property_names\00", align 1
@duplicate_property_names_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Duplicate property name\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"node_name_chars\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,._+-@\00", align 1
@node_name_chars_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"Bad character '%c' in node name\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"node_name_format\00", align 1
@node_name_format_prereqs = internal global [1 x ptr] [ptr @node_name_chars], align 8
@.str.23 = private unnamed_addr constant [37 x i8] c"multiple '@' characters in node name\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"property_name_chars\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,._+*#?-\00", align 1
@property_name_chars_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"Bad character '%c' in property name\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"name_is_string\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@name_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [25 x i8] c"property is not a string\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"name_properties\00", align 1
@name_properties_prereqs = internal global [1 x ptr] [ptr @name_is_string], align 8
@.str.31 = private unnamed_addr constant [62 x i8] c"\22name\22 property is incorrect (\22%s\22 instead of base node name)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"node_name_vs_property_name\00", align 1
@node_name_vs_property_name_prereqs = internal global [1 x ptr] [ptr @node_name_chars], align 8
@.str.33 = private unnamed_addr constant [37 x i8] c"node name and property name conflict\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"duplicate_label\00", align 1
@duplicate_label_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [50 x i8] c"Duplicate label '%s' on %s%s%s%s%s and %s%s%s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"value of \00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"' in \00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"explicit_phandles\00", align 1
@explicit_phandles_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"!node->phandle\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"../scripts/dtc/checks.c\00", align 1
@__PRETTY_FUNCTION__.check_explicit_phandles = private unnamed_addr constant [78 x i8] c"void check_explicit_phandles(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"mismatching 'phandle' and 'linux,phandle' properties\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"duplicated phandle 0x%x (seen before at %s)\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"bad length (%d) %s property\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"m->offset == 0\00", align 1
@__PRETTY_FUNCTION__.check_phandle_prop = private unnamed_addr constant [89 x i8] c"cell_t check_phandle_prop(struct check *, struct dt_info *, struct node *, const char *)\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"%s is a reference to another node\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"bad value (0x%x) in %s property\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"phandle_references\00", align 1
@phandle_references_prereqs = internal global [2 x ptr] [ptr @duplicate_node_names, ptr @explicit_phandles], align 16
@.str.52 = private unnamed_addr constant [44 x i8] c"m->offset + sizeof(cell_t) <= prop->val.len\00", align 1
@__PRETTY_FUNCTION__.fixup_phandle_references = private unnamed_addr constant [79 x i8] c"void fixup_phandle_references(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Reference to non-existent node or label \22%s\22\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"path_references\00", align 1
@path_references_prereqs = internal global [1 x ptr] [ptr @duplicate_node_names], align 8
@.str.55 = private unnamed_addr constant [27 x i8] c"m->offset <= prop->val.len\00", align 1
@__PRETTY_FUNCTION__.fixup_path_references = private unnamed_addr constant [76 x i8] c"void fixup_path_references(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"omit_unused_nodes\00", align 1
@omit_unused_nodes_prereqs = internal global [2 x ptr] [ptr @phandle_references, ptr @path_references], align 16
@generate_symbols = external local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [22 x i8] c"address_cells_is_cell\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@address_cells_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [30 x i8] c"property is not a single cell\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"size_cells_is_cell\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@size_cells_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [22 x i8] c"device_type_is_string\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@device_type_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.64 = private unnamed_addr constant [16 x i8] c"model_is_string\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@model_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [17 x i8] c"status_is_string\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@status_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"label_is_string\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@label_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.70 = private unnamed_addr constant [26 x i8] c"compatible_is_string_list\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@compatible_is_string_list_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.72 = private unnamed_addr constant [30 x i8] c"property is not a string list\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"names_is_string_list\00", align 1
@names_is_string_list_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"-names\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"property_name_chars_strict\00", align 1
@.str.76 = private unnamed_addr constant [65 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,-\00", align 1
@property_name_chars_strict_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [48 x i8] c"Character '%c' not recommended in property name\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"node_name_chars_strict\00", align 1
@node_name_chars_strict_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.79 = private unnamed_addr constant [44 x i8] c"Character '%c' not recommended in node name\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"addr_size_cells\00", align 1
@addr_size_cells_prereqs = internal global [2 x ptr] [ptr @address_cells_is_cell, ptr @size_cells_is_cell], align 16
@.str.81 = private unnamed_addr constant [11 x i8] c"reg_format\00", align 1
@reg_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.82 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"Root node has a \22reg\22 property\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"property is empty\00", align 1
@.str.85 = private unnamed_addr constant [81 x i8] c"property has invalid length (%d bytes) (#address-cells == %d, #size-cells == %d)\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"ranges_format\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ranges_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.88 = private unnamed_addr constant [30 x i8] c"Root node has a \22%s\22 property\00", align 1
@.str.89 = private unnamed_addr constant [69 x i8] c"empty \22%s\22 property but its #address-cells (%d) differs from %s (%d)\00", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c"empty \22%s\22 property but its #size-cells (%d) differs from %s (%d)\00", align 1
@.str.91 = private unnamed_addr constant [121 x i8] c"\22%s\22 property has invalid length (%d bytes) (parent #address-cells == %d, child #address-cells == %d, #size-cells == %d)\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"dma_ranges_format\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@dma_ranges_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.94 = private unnamed_addr constant [20 x i8] c"unit_address_vs_reg\00", align 1
@unit_address_vs_reg_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.95 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.96 = private unnamed_addr constant [52 x i8] c"node has a reg or ranges property, but no unit name\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"node has a unit name, but no reg or ranges property\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"unit_address_format\00", align 1
@unit_address_format_prereqs = internal global [3 x ptr] [ptr @node_name_format, ptr @pci_bridge, ptr @simple_bus_bridge], align 16
@.str.99 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"unit name should not have leading \220x\22\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"unit name should not have leading 0s\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"pci_bridge\00", align 1
@pci_bridge_prereqs = internal global [2 x ptr] [ptr @device_type_is_string, ptr @addr_size_cells], align 16
@.str.103 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@pci_bus = internal constant %struct.bus_type { ptr @.str.113 }, align 8
@.str.104 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"node name is not \22pci\22 or \22pcie\22\00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"missing ranges for PCI bridge (or not a bridge)\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"incorrect #address-cells for PCI bridge\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"incorrect #size-cells for PCI bridge\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"value must be 2 cells\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"1st cell must be less than or equal to 2nd cell\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"maximum bus number must be less than 256\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"pci_device_reg\00", align 1
@pci_device_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @pci_bridge], align 16
@.str.115 = private unnamed_addr constant [53 x i8] c"PCI reg config space address cells 2 and 3 must be 0\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"PCI reg address is not configuration space\00", align 1
@.str.117 = private unnamed_addr constant [55 x i8] c"PCI reg config space address register number must be 0\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"%x,%x\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"PCI unit address format error, expected \22%s\22\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"pci_device_bus_num\00", align 1
@pci_device_bus_num_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @pci_bridge], align 16
@.str.122 = private unnamed_addr constant [51 x i8] c"PCI bus number %d out of range, expected (%d - %d)\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"simple_bus_bridge\00", align 1
@simple_bus_bridge_prereqs = internal global [2 x ptr] [ptr @addr_size_cells, ptr @compatible_is_string_list], align 16
@.str.124 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@simple_bus = internal constant %struct.bus_type { ptr @.str.124 }, align 8
@.str.125 = private unnamed_addr constant [15 x i8] c"simple_bus_reg\00", align 1
@simple_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @simple_bus_bridge], align 16
@.str.126 = private unnamed_addr constant [37 x i8] c"missing or empty reg/ranges property\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.128 = private unnamed_addr constant [52 x i8] c"simple-bus unit address format error, expected \22%s\22\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"i2c_bus_bridge\00", align 1
@i2c_bus_bridge_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.130 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"i2c-arb\00", align 1
@i2c_bus = internal constant %struct.bus_type { ptr @.str.130 }, align 8
@.str.132 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"incorrect #address-cells for I2C bus\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"incorrect #size-cells for I2C bus\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"i2c_bus_reg\00", align 1
@i2c_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @i2c_bus_bridge], align 16
@.str.136 = private unnamed_addr constant [30 x i8] c"missing or empty reg property\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"I2C bus unit address format error, expected \22%s\22\00", align 1
@.str.138 = private unnamed_addr constant [50 x i8] c"I2C address must be less than 10-bits, got \220x%x\22\00", align 1
@.str.139 = private unnamed_addr constant [115 x i8] c"I2C address must be less than 7-bits, got \220x%x\22. Set I2C_TEN_BIT_ADDRESS for 10 bit addresses or fix the property\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"spi_bus_bridge\00", align 1
@spi_bus_bridge_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.141 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spi_bus = internal constant %struct.bus_type { ptr @.str.147 }, align 8
@.str.142 = private unnamed_addr constant [5 x i8] c"spi-\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"node name for SPI buses should be 'spi'\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"incorrect #address-cells for SPI bus\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"incorrect #size-cells for SPI bus\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"spi-bus\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"spi_bus_reg\00", align 1
@spi_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @spi_bus_bridge], align 16
@.str.149 = private unnamed_addr constant [49 x i8] c"SPI bus unit address format error, expected \22%s\22\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"avoid_default_addr_size\00", align 1
@avoid_default_addr_size_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.151 = private unnamed_addr constant [40 x i8] c"Relying on default #address-cells value\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"Relying on default #size-cells value\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"avoid_unnecessary_addr_size\00", align 1
@avoid_unnecessary_addr_size_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.154 = private unnamed_addr constant [80 x i8] c"unnecessary #address-cells/#size-cells without \22ranges\22 or child \22reg\22 property\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"unique_unit_address\00", align 1
@unique_unit_address_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.156 = private unnamed_addr constant [46 x i8] c"duplicate unit-address (also used in node %s)\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.158 = private unnamed_addr constant [31 x i8] c"unique_unit_address_if_enabled\00", align 1
@unique_unit_address_if_enabled_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.159 = private unnamed_addr constant [37 x i8] c"obsolete_chosen_interrupt_controller\00", align 1
@obsolete_chosen_interrupt_controller_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.160 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.162 = private unnamed_addr constant [53 x i8] c"/chosen has obsolete \22interrupt-controller\22 property\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"chosen_node_is_root\00", align 1
@chosen_node_is_root_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.164 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"chosen node must be at root node\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"chosen_node_bootargs\00", align 1
@chosen_node_bootargs_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"chosen_node_stdout_path\00", align 1
@chosen_node_stdout_path_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.169 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.171 = private unnamed_addr constant [26 x i8] c"Use 'stdout-path' instead\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"clocks_property\00", align 1
@clocks_provider = internal global %struct.provider { ptr @.str.178, ptr @.str.179, i8 0 }, align 8
@clocks_property_prereqs = internal global [2 x ptr] [ptr @clocks_is_cell, ptr @phandle_references], align 16
@.str.173 = private unnamed_addr constant [56 x i8] c"property size (%d) is invalid, expected multiple of %zu\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"cell %d is not a phandle reference\00", align 1
@.str.175 = private unnamed_addr constant [41 x i8] c"Could not get phandle node for (cell %d)\00", align 1
@.str.176 = private unnamed_addr constant [71 x i8] c"Missing property '%s' in node %s or bad phandle (referred from %s[%d])\00", align 1
@.str.177 = private unnamed_addr constant [46 x i8] c"property size (%d) too small for cell size %d\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"clocks_is_cell\00", align 1
@clocks_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.181 = private unnamed_addr constant [24 x i8] c"cooling_device_property\00", align 1
@cooling_device_provider = internal global %struct.provider { ptr @.str.182, ptr @.str.183, i8 0 }, align 8
@cooling_device_property_prereqs = internal global [2 x ptr] [ptr @cooling_device_is_cell, ptr @phandle_references], align 16
@.str.182 = private unnamed_addr constant [15 x i8] c"cooling-device\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"cooling_device_is_cell\00", align 1
@cooling_device_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.185 = private unnamed_addr constant [14 x i8] c"dmas_property\00", align 1
@dmas_provider = internal global %struct.provider { ptr @.str.186, ptr @.str.187, i8 0 }, align 8
@dmas_property_prereqs = internal global [2 x ptr] [ptr @dmas_is_cell, ptr @phandle_references], align 16
@.str.186 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"dmas_is_cell\00", align 1
@dmas_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.189 = private unnamed_addr constant [17 x i8] c"hwlocks_property\00", align 1
@hwlocks_provider = internal global %struct.provider { ptr @.str.190, ptr @.str.191, i8 0 }, align 8
@hwlocks_property_prereqs = internal global [2 x ptr] [ptr @hwlocks_is_cell, ptr @phandle_references], align 16
@.str.190 = private unnamed_addr constant [8 x i8] c"hwlocks\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"#hwlock-cells\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"hwlocks_is_cell\00", align 1
@hwlocks_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.193 = private unnamed_addr constant [29 x i8] c"interrupts_extended_property\00", align 1
@interrupts_extended_provider = internal global %struct.provider { ptr @.str.194, ptr @.str.195, i8 0 }, align 8
@interrupts_extended_property_prereqs = internal global [2 x ptr] [ptr @interrupts_extended_is_cell, ptr @phandle_references], align 16
@.str.194 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"interrupts_extended_is_cell\00", align 1
@interrupts_extended_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.197 = private unnamed_addr constant [21 x i8] c"io_channels_property\00", align 1
@io_channels_provider = internal global %struct.provider { ptr @.str.198, ptr @.str.199, i8 0 }, align 8
@io_channels_property_prereqs = internal global [2 x ptr] [ptr @io_channels_is_cell, ptr @phandle_references], align 16
@.str.198 = private unnamed_addr constant [12 x i8] c"io-channels\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"io_channels_is_cell\00", align 1
@io_channels_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.201 = private unnamed_addr constant [16 x i8] c"iommus_property\00", align 1
@iommus_provider = internal global %struct.provider { ptr @.str.202, ptr @.str.203, i8 0 }, align 8
@iommus_property_prereqs = internal global [2 x ptr] [ptr @iommus_is_cell, ptr @phandle_references], align 16
@.str.202 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"iommus_is_cell\00", align 1
@iommus_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.205 = private unnamed_addr constant [16 x i8] c"mboxes_property\00", align 1
@mboxes_provider = internal global %struct.provider { ptr @.str.206, ptr @.str.207, i8 0 }, align 8
@mboxes_property_prereqs = internal global [2 x ptr] [ptr @mboxes_is_cell, ptr @phandle_references], align 16
@.str.206 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"mboxes_is_cell\00", align 1
@mboxes_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.209 = private unnamed_addr constant [20 x i8] c"msi_parent_property\00", align 1
@msi_parent_provider = internal global %struct.provider { ptr @.str.210, ptr @.str.211, i8 1 }, align 8
@msi_parent_property_prereqs = internal global [2 x ptr] [ptr @msi_parent_is_cell, ptr @phandle_references], align 16
@.str.210 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"msi_parent_is_cell\00", align 1
@msi_parent_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.213 = private unnamed_addr constant [22 x i8] c"mux_controls_property\00", align 1
@mux_controls_provider = internal global %struct.provider { ptr @.str.214, ptr @.str.215, i8 0 }, align 8
@mux_controls_property_prereqs = internal global [2 x ptr] [ptr @mux_controls_is_cell, ptr @phandle_references], align 16
@.str.214 = private unnamed_addr constant [13 x i8] c"mux-controls\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"#mux-control-cells\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"mux_controls_is_cell\00", align 1
@mux_controls_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.217 = private unnamed_addr constant [14 x i8] c"phys_property\00", align 1
@phys_provider = internal global %struct.provider { ptr @.str.218, ptr @.str.219, i8 0 }, align 8
@phys_property_prereqs = internal global [2 x ptr] [ptr @phys_is_cell, ptr @phandle_references], align 16
@.str.218 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"phys_is_cell\00", align 1
@phys_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.221 = private unnamed_addr constant [23 x i8] c"power_domains_property\00", align 1
@power_domains_provider = internal global %struct.provider { ptr @.str.222, ptr @.str.223, i8 0 }, align 8
@power_domains_property_prereqs = internal global [2 x ptr] [ptr @power_domains_is_cell, ptr @phandle_references], align 16
@.str.222 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"power_domains_is_cell\00", align 1
@power_domains_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.225 = private unnamed_addr constant [14 x i8] c"pwms_property\00", align 1
@pwms_provider = internal global %struct.provider { ptr @.str.226, ptr @.str.227, i8 0 }, align 8
@pwms_property_prereqs = internal global [2 x ptr] [ptr @pwms_is_cell, ptr @phandle_references], align 16
@.str.226 = private unnamed_addr constant [5 x i8] c"pwms\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"#pwm-cells\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"pwms_is_cell\00", align 1
@pwms_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.229 = private unnamed_addr constant [16 x i8] c"resets_property\00", align 1
@resets_provider = internal global %struct.provider { ptr @.str.230, ptr @.str.231, i8 0 }, align 8
@resets_property_prereqs = internal global [2 x ptr] [ptr @resets_is_cell, ptr @phandle_references], align 16
@.str.230 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.232 = private unnamed_addr constant [15 x i8] c"resets_is_cell\00", align 1
@resets_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.233 = private unnamed_addr constant [19 x i8] c"sound_dai_property\00", align 1
@sound_dai_provider = internal global %struct.provider { ptr @.str.234, ptr @.str.235, i8 0 }, align 8
@sound_dai_property_prereqs = internal global [2 x ptr] [ptr @sound_dai_is_cell, ptr @phandle_references], align 16
@.str.234 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@.str.236 = private unnamed_addr constant [18 x i8] c"sound_dai_is_cell\00", align 1
@sound_dai_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.237 = private unnamed_addr constant [25 x i8] c"thermal_sensors_property\00", align 1
@thermal_sensors_provider = internal global %struct.provider { ptr @.str.238, ptr @.str.239, i8 0 }, align 8
@thermal_sensors_property_prereqs = internal global [2 x ptr] [ptr @thermal_sensors_is_cell, ptr @phandle_references], align 16
@.str.238 = private unnamed_addr constant [16 x i8] c"thermal-sensors\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"#thermal-sensor-cells\00", align 1
@.str.240 = private unnamed_addr constant [24 x i8] c"thermal_sensors_is_cell\00", align 1
@thermal_sensors_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.241 = private unnamed_addr constant [25 x i8] c"deprecated_gpio_property\00", align 1
@deprecated_gpio_property_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.242 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.243 = private unnamed_addr constant [50 x i8] c"'[*-]gpio' is deprecated, use '[*-]gpios' instead\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c",nr-gpios\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"-gpios\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"-gpio\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"gpios_property\00", align 1
@gpios_property_prereqs = internal global [1 x ptr] [ptr @phandle_references], align 8
@.str.249 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.251 = private unnamed_addr constant [20 x i8] c"interrupts_property\00", align 1
@interrupts_property_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.252 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.253 = private unnamed_addr constant [47 x i8] c"size (%d) is invalid, expected multiple of %zu\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"Invalid phandle\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"Bad phandle\00", align 1
@.str.257 = private unnamed_addr constant [55 x i8] c"Missing interrupt-controller or interrupt-map property\00", align 1
@.str.258 = private unnamed_addr constant [25 x i8] c"Missing interrupt-parent\00", align 1
@.str.259 = private unnamed_addr constant [38 x i8] c"size is (%d), expected multiple of %d\00", align 1
@.str.260 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.261 = private unnamed_addr constant [19 x i8] c"interrupt_provider\00", align 1
@interrupt_provider_prereqs = internal global [1 x ptr] [ptr @interrupts_extended_is_cell], align 8
@.str.262 = private unnamed_addr constant [49 x i8] c"Missing '#interrupt-cells' in interrupt provider\00", align 1
@.str.263 = private unnamed_addr constant [64 x i8] c"'#interrupt-cells' found, but node is not an interrupt provider\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"interrupt_map\00", align 1
@interrupt_map_prereqs = internal global [3 x ptr] [ptr @phandle_references, ptr @addr_size_cells, ptr @interrupt_provider], align 16
@.str.265 = private unnamed_addr constant [51 x i8] c"Missing '#address-cells' in interrupt-map provider\00", align 1
@.str.266 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.267 = private unnamed_addr constant [44 x i8] c"property size (%d) is invalid, expected %zu\00", align 1
@.str.268 = private unnamed_addr constant [45 x i8] c"property size (%d) too small, expected > %zu\00", align 1
@.str.269 = private unnamed_addr constant [30 x i8] c"Cell %zu is not a phandle(%d)\00", align 1
@.str.270 = private unnamed_addr constant [46 x i8] c"Could not get phandle(%d) node for (cell %zu)\00", align 1
@.str.271 = private unnamed_addr constant [97 x i8] c"Missing property '#interrupt-cells' in node %s or bad phandle (referred from interrupt-map[%zu])\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"alias_paths\00", align 1
@alias_paths_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.273 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.274 = private unnamed_addr constant [42 x i8] c"aliases property is not a valid node (%s)\00", align 1
@.str.275 = private unnamed_addr constant [38 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789-\00", align 1
@.str.276 = private unnamed_addr constant [58 x i8] c"aliases property name must include only lowercase and '-'\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"graph_nodes\00", align 1
@graph_nodes_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.278 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@graph_port_bus = internal constant %struct.bus_type { ptr @.str.281 }, align 8
@.str.280 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@graph_ports_bus = internal constant %struct.bus_type { ptr @.str.282 }, align 8
@.str.281 = private unnamed_addr constant [11 x i8] c"graph-port\00", align 1
@.str.282 = private unnamed_addr constant [12 x i8] c"graph-ports\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"graph_child_address\00", align 1
@graph_child_address_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.284 = private unnamed_addr constant [84 x i8] c"graph node has single child node '%s', #address-cells/#size-cells are not necessary\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"graph_port\00", align 1
@graph_port_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.286 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.287 = private unnamed_addr constant [38 x i8] c"graph port node name should be 'port'\00", align 1
@.str.288 = private unnamed_addr constant [36 x i8] c"graph node malformed 'reg' property\00", align 1
@.str.289 = private unnamed_addr constant [45 x i8] c"graph node unit address error, expected \22%s\22\00", align 1
@.str.290 = private unnamed_addr constant [45 x i8] c"graph node '#address-cells' is %d, must be 1\00", align 1
@.str.291 = private unnamed_addr constant [42 x i8] c"graph node '#size-cells' is %d, must be 0\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"graph_endpoint\00", align 1
@graph_endpoint_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.293 = private unnamed_addr constant [46 x i8] c"graph endpoint node name should be 'endpoint'\00", align 1
@.str.294 = private unnamed_addr constant [51 x i8] c"graph connection to node '%s' is not bidirectional\00", align 1
@.str.295 = private unnamed_addr constant [27 x i8] c"graph phandle is not valid\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"always_fail\00", align 1
@always_fail_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.297 = private unnamed_addr constant [18 x i8] c"always_fail check\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"!c->inprogress\00", align 1
@__PRETTY_FUNCTION__.run_check = private unnamed_addr constant [50 x i8] c"_Bool run_check(struct check *, struct dt_info *)\00", align 1
@.str.300 = private unnamed_addr constant [25 x i8] c"Failed prerequisite '%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @parse_checks_option(i1 noundef zeroext %warn, i1 noundef zeroext %error, ptr noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %arg, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %arg, ptr noundef nonnull dereferenceable(4) @.str.1, i64 noundef 3) #17
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %add.ptr = getelementptr inbounds i8, ptr %arg, i64 3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %name.0 = phi ptr [ %add.ptr, %if.then ], [ %arg, %lor.lhs.false ]
  %enable.0 = phi i1 [ false, %if.then ], [ true, %lor.lhs.false ]
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 89
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !9
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %name.0) #17
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %for.cond

if.then10:                                        ; preds = %for.body
  br i1 %enable.0, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then10
  tail call fastcc void @enable_warning_error(ptr noundef nonnull %0, i1 noundef zeroext %warn, i1 noundef zeroext %error)
  br label %cleanup18

if.else:                                          ; preds = %if.then10
  tail call fastcc void @disable_warning_error(ptr noundef nonnull %0, i1 noundef zeroext %warn, i1 noundef zeroext %error)
  br label %cleanup18

for.end:                                          ; preds = %for.cond
  tail call void (ptr, ...) @die(ptr undef, ptr noundef %name.0) #18
  unreachable

cleanup18:                                        ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @enable_warning_error(ptr nocapture noundef %c, i1 noundef zeroext %warn, i1 noundef zeroext %error) unnamed_addr #3 {
entry:
  br i1 %warn, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %warn2 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 3
  %0 = load i8, ptr %warn2, align 8, !tbaa !13, !range !14
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  br i1 %error, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %error6 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %1 = load i8, ptr %error6, align 1, !tbaa !15, !range !14
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5, %land.lhs.true
  %num_prereqs = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 7
  %2 = load i32, ptr %num_prereqs, align 4, !tbaa !16
  %cmp35 = icmp sgt i32 %2, 0
  br i1 %cmp35, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %prereq = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %3 = load ptr, ptr %prereq, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  tail call fastcc void @enable_warning_error(ptr noundef %4, i1 noundef zeroext %warn, i1 noundef zeroext %error)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %num_prereqs, align 4, !tbaa !16
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %if.end

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true5, %lor.lhs.false
  %warn10 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 3
  %7 = load i8, ptr %warn10, align 8, !tbaa !13, !range !14
  %tobool11 = icmp ne i8 %7, 0
  %8 = or i1 %tobool11, %warn
  %frombool14 = zext i1 %8 to i8
  store i8 %frombool14, ptr %warn10, align 8, !tbaa !13
  %error15 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %9 = load i8, ptr %error15, align 1, !tbaa !15, !range !14
  %tobool16 = icmp ne i8 %9, 0
  %10 = or i1 %tobool16, %error
  %frombool21 = zext i1 %10 to i8
  store i8 %frombool21, ptr %error15, align 1, !tbaa !15
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @disable_warning_error(ptr noundef %c, i1 noundef zeroext %warn, i1 noundef zeroext %error) unnamed_addr #3 {
entry:
  br i1 %warn, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %warn2 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 3
  %0 = load i8, ptr %warn2, align 8, !tbaa !13, !range !14
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %for.body.preheader

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  br i1 %error, label %land.lhs.true5, label %if.end23

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %error6 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %1 = load i8, ptr %error6, align 1, !tbaa !15, !range !14
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %tobool7.not, label %if.end23, label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true5, %land.lhs.true
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.preheader
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.end ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %indvars.iv59
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %num_prereqs = getelementptr inbounds %struct.check, ptr %2, i64 0, i32 7
  %3 = load i32, ptr %num_prereqs, align 4, !tbaa !16
  %cmp1055 = icmp sgt i32 %3, 0
  br i1 %cmp1055, label %for.body12.lr.ph, label %for.end

for.body12.lr.ph:                                 ; preds = %for.body
  %prereq = getelementptr inbounds %struct.check, ptr %2, i64 0, i32 8
  br label %for.body12

for.body12:                                       ; preds = %for.inc, %for.body12.lr.ph
  %4 = phi i32 [ %3, %for.body12.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load ptr, ptr %prereq, align 8, !tbaa !17
  %arrayidx14 = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx14, align 8, !tbaa !5
  %cmp15 = icmp eq ptr %6, %c
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body12
  tail call fastcc void @disable_warning_error(ptr noundef nonnull %2, i1 noundef zeroext %warn, i1 noundef zeroext %error)
  %.pre = load i32, ptr %num_prereqs, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body12
  %7 = phi i32 [ %4, %for.body12 ], [ %.pre, %if.then17 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = sext i32 %7 to i64
  %cmp10 = icmp slt i64 %indvars.iv.next, %8
  br i1 %cmp10, label %for.body12, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next60, 89
  br i1 %exitcond.not, label %if.end23, label %for.body

if.end23:                                         ; preds = %for.end, %land.lhs.true5, %lor.lhs.false
  %warn24 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 3
  %9 = load i8, ptr %warn24, align 8, !tbaa !13, !range !14
  %tobool25 = icmp ne i8 %9, 0
  %lnot = xor i1 %warn, true
  %10 = and i1 %tobool25, %lnot
  %frombool29 = zext i1 %10 to i8
  store i8 %frombool29, ptr %warn24, align 8, !tbaa !13
  %error30 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %11 = load i8, ptr %error30, align 1, !tbaa !15, !range !14
  %tobool31 = icmp ne i8 %11, 0
  %lnot35 = xor i1 %error, true
  %12 = and i1 %tobool31, %lnot35
  %frombool38 = zext i1 %12 to i8
  store i8 %frombool38, ptr %error30, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture readnone %str, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.298, i64 13, i64 1, ptr %0) #20
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %ap) #20
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @process_checks(i1 noundef zeroext %force, ptr noundef %dti) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %error.025 = phi i32 [ 0, %entry ], [ %error.1, %if.end ]
  %arrayidx = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %warn = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %1 = load i8, ptr %warn, align 8, !tbaa !13, !range !14
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %error3 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %2 = load i8, ptr %error3, align 1, !tbaa !15, !range !14
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %tobool6.not = icmp eq i32 %error.025, 0
  br i1 %tobool6.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then
  %call = tail call fastcc zeroext i1 @run_check(ptr noundef nonnull %0, ptr noundef %dti)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %3 = phi i1 [ true, %if.then ], [ %call, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  br label %if.end

if.end:                                           ; preds = %lor.end, %lor.lhs.false
  %error.1 = phi i32 [ %lor.ext, %lor.end ], [ %error.025, %lor.lhs.false ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 89
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  %tobool8.not = icmp eq i32 %error.1, 0
  br i1 %tobool8.not, label %if.end19, label %if.then9

if.then9:                                         ; preds = %for.end
  br i1 %force, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 64, i64 1, ptr %4) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

if.else:                                          ; preds = %if.then9
  %6 = load i32, ptr @quiet, align 4, !tbaa !18
  %cmp13 = icmp slt i32 %6, 3
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.else
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 46, i64 1, ptr %7) #20
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @run_check(ptr noundef %c, ptr noundef %dti) unnamed_addr #0 {
entry:
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !19
  %inprogress = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 6
  %1 = load i8, ptr %inprogress, align 8, !tbaa !21, !range !14
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.42, i32 noundef 160, ptr noundef nonnull @__PRETTY_FUNCTION__.run_check) #21
  unreachable

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  %2 = load i32, ptr %status, align 4, !tbaa !22
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end3, label %out

if.end3:                                          ; preds = %if.end
  store i8 1, ptr %inprogress, align 8, !tbaa !21
  %num_prereqs = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 7
  %3 = load i32, ptr %num_prereqs, align 4, !tbaa !16
  %cmp556 = icmp sgt i32 %3, 0
  br i1 %cmp556, label %for.body.lr.ph, label %if.end18

for.body.lr.ph:                                   ; preds = %if.end3
  %prereq = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end14, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end14 ]
  %error.058 = phi i8 [ 0, %for.body.lr.ph ], [ %frombool, %if.end14 ]
  %4 = load ptr, ptr %prereq, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool6.not = icmp eq i8 %error.058, 0
  br i1 %tobool6.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %call = tail call fastcc zeroext i1 @run_check(ptr noundef %5, ptr noundef %dti)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %6 = phi i1 [ true, %for.body ], [ %call, %lor.rhs ]
  %frombool = zext i1 %6 to i8
  %status7 = getelementptr inbounds %struct.check, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %status7, align 4, !tbaa !22
  %cmp8.not = icmp eq i32 %7, 2
  br i1 %cmp8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %lor.end
  store i32 1, ptr %status, align 4, !tbaa !22
  %8 = load ptr, ptr %prereq, align 8, !tbaa !17
  %arrayidx13 = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  %9 = load ptr, ptr %arrayidx13, align 8, !tbaa !5
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.300, ptr noundef %10)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %lor.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %num_prereqs, align 4, !tbaa !16
  %12 = sext i32 %11 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %if.end14
  %.pre = load i32, ptr %status, align 4, !tbaa !22
  %cmp16.not = icmp eq i32 %.pre, 0
  br i1 %cmp16.not, label %if.end18, label %out

if.end18:                                         ; preds = %for.end, %if.end3
  %error.0.lcssa61 = phi i8 [ %frombool, %for.end ], [ 0, %if.end3 ]
  tail call fastcc void @check_nodes_props(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %0)
  %13 = load i32, ptr %status, align 4, !tbaa !22
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %out.thread, label %out

out.thread:                                       ; preds = %if.end18
  store i32 2, ptr %status, align 4, !tbaa !22
  store i8 0, ptr %inprogress, align 8, !tbaa !21
  br label %if.end30

out:                                              ; preds = %if.end18, %for.end, %if.end
  %14 = phi i32 [ %13, %if.end18 ], [ %.pre, %for.end ], [ %2, %if.end ]
  %error.1 = phi i8 [ %error.0.lcssa61, %if.end18 ], [ %frombool, %for.end ], [ 0, %if.end ]
  store i8 0, ptr %inprogress, align 8, !tbaa !21
  %cmp26.not = icmp eq i32 %14, 2
  br i1 %cmp26.not, label %if.end30, label %land.lhs.true

land.lhs.true:                                    ; preds = %out
  %error27 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %15 = load i8, ptr %error27, align 1, !tbaa !15, !range !14
  %tobool28.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool28.not, i8 %error.1, i8 1
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %out, %out.thread
  %error.2 = phi i8 [ %error.1, %out ], [ %spec.select, %land.lhs.true ], [ %error.0.lcssa61, %out.thread ]
  %tobool31 = icmp ne i8 %error.2, 0
  ret i1 %tobool31
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_node_names(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node) #0 {
entry:
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.027 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not28 = icmp eq ptr %child.027, null
  br i1 %tobool.not28, label %for.end14, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc12, %for.body.lr.ph
  %child.029 = phi ptr [ %child.027, %for.body.lr.ph ], [ %child.0, %for.inc12 ]
  %0 = load i8, ptr %child.029, align 8, !tbaa !23, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.cond2.preheader, label %for.inc12

for.cond2.preheader:                              ; preds = %for.body
  %child2.0.in23 = getelementptr inbounds %struct.node, ptr %child.029, i64 0, i32 5
  %child2.024 = load ptr, ptr %child2.0.in23, align 8, !tbaa !25
  %tobool3.not25 = icmp eq ptr %child2.024, null
  br i1 %tobool3.not25, label %for.inc12, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %name = getelementptr inbounds %struct.node, ptr %child.029, i64 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body4.lr.ph
  %child2.026 = phi ptr [ %child2.024, %for.body4.lr.ph ], [ %child2.0, %for.inc ]
  %1 = load ptr, ptr %name, align 8, !tbaa !26
  %name5 = getelementptr inbounds %struct.node, ptr %child2.026, i64 0, i32 1
  %2 = load ptr, ptr %name5, align 8, !tbaa !26
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body4
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %child2.026, ptr noundef null, ptr noundef nonnull @.str.6)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body4
  %child2.0.in = getelementptr inbounds %struct.node, ptr %child2.026, i64 0, i32 5
  %child2.0 = load ptr, ptr %child2.0.in, align 8, !tbaa !25
  %tobool3.not = icmp eq ptr %child2.0, null
  br i1 %tobool3.not, label %for.inc12, label %for.body4

for.inc12:                                        ; preds = %for.inc, %for.cond2.preheader, %for.body
  %next_sibling13 = getelementptr inbounds %struct.node, ptr %child.029, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling13, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end14, label %for.body

for.end14:                                        ; preds = %for.inc12, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_msg(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %dti, ptr noundef readonly %node, ptr noundef readonly %prop, ptr noundef %fmt, ...) unnamed_addr #6 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %str = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %str) #19
  store ptr null, ptr %str, align 8, !tbaa !5
  %warn = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 3
  %0 = load i8, ptr %warn, align 8, !tbaa !13, !range !14
  %tobool = icmp ne i8 %0, 0
  %1 = load i32, ptr @quiet, align 4
  %cmp = icmp slt i32 %1, 1
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end, label %land.lhs.true1

land.lhs.true1:                                   ; preds = %entry
  %error = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %2 = load i8, ptr %error, align 1, !tbaa !15, !range !14
  %tobool2 = icmp ne i8 %2, 0
  %cmp4 = icmp slt i32 %1, 2
  %or.cond63 = select i1 %tobool2, i1 %cmp4, i1 false
  br i1 %or.cond63, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true1, %entry
  %tobool5.not = icmp eq ptr %prop, null
  br i1 %tobool5.not, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %srcpos = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 5
  %3 = load ptr, ptr %srcpos, align 8, !tbaa !27
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.else, label %if.then19

if.else:                                          ; preds = %land.lhs.true6, %if.end
  %tobool10.not = icmp eq ptr %node, null
  br i1 %tobool10.not, label %if.else21, label %if.end17

if.end17:                                         ; preds = %if.else
  %srcpos12 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 13
  %4 = load ptr, ptr %srcpos12, align 8, !tbaa !30
  %tobool18.not = icmp eq ptr %4, null
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.end17, %land.lhs.true6
  %pos.092 = phi ptr [ %4, %if.end17 ], [ %3, %land.lhs.true6 ]
  %call = tail call ptr @srcpos_string(ptr noundef nonnull %pos.092) #19
  %call20 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.7, ptr noundef %call) #19
  call void @free(ptr noundef %call) #19
  br label %if.end30

if.else21:                                        ; preds = %if.end17, %if.else
  %outname = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 4
  %5 = load ptr, ptr %outname, align 8, !tbaa !31
  %call22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(2) @.str.8) #17
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  %call25 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.9) #19
  br label %if.end30

if.else26:                                        ; preds = %if.else21
  %call28 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.7, ptr noundef %5) #19
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then24, %if.then19
  %tobool1893 = phi i1 [ false, %if.then24 ], [ false, %if.else26 ], [ true, %if.then19 ]
  %error31 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 4
  %6 = load i8, ptr %error31, align 1, !tbaa !15, !range !14
  %tobool32.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool32.not, ptr @.str.12, ptr @.str.11
  %7 = load ptr, ptr %c, align 8, !tbaa !9
  %call33 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %str, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef %7) #19
  %tobool34.not = icmp eq ptr %node, null
  br i1 %tobool34.not, label %if.end44, label %if.then35

if.then35:                                        ; preds = %if.end30
  %fullpath41 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 6
  %8 = load ptr, ptr %fullpath41, align 8, !tbaa !32
  br i1 %tobool5.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.then35
  %name38 = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 1
  %9 = load ptr, ptr %name38, align 8, !tbaa !33
  %call39 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %str, ptr noundef nonnull @.str.13, ptr noundef %8, ptr noundef %9) #19
  br label %if.end44

if.else40:                                        ; preds = %if.then35
  %call42 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %str, ptr noundef nonnull @.str.14, ptr noundef %8) #19
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then37, %if.end30
  call void @llvm.va_start(ptr nonnull %ap)
  %call46 = call i32 @xavsprintf_append(ptr noundef nonnull %str, ptr noundef %fmt, ptr noundef nonnull %ap) #19
  call void @llvm.va_end(ptr nonnull %ap)
  %call48 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %str, ptr noundef nonnull @.str.15) #19
  %or.cond64 = and i1 %tobool5.not, %tobool1893
  br i1 %or.cond64, label %if.then52, label %if.end58

if.then52:                                        ; preds = %if.end44
  %srcpos53 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 13
  %10 = load ptr, ptr %srcpos53, align 8, !tbaa !30
  %next99 = getelementptr inbounds %struct.srcpos, ptr %10, i64 0, i32 5
  %11 = load ptr, ptr %next99, align 8, !tbaa !34
  %tobool54.not100 = icmp eq ptr %11, null
  br i1 %tobool54.not100, label %if.end58, label %while.body

while.body:                                       ; preds = %while.body, %if.then52
  %12 = phi ptr [ %13, %while.body ], [ %11, %if.then52 ]
  %call56 = call ptr @srcpos_string(ptr noundef nonnull %12) #19
  %call57 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %str, ptr noundef nonnull @.str.16, ptr noundef %call56) #19
  call void @free(ptr noundef %call56) #19
  %next = getelementptr inbounds %struct.srcpos, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %next, align 8, !tbaa !34
  %tobool54.not = icmp eq ptr %13, null
  br i1 %tobool54.not, label %if.end58, label %while.body

if.end58:                                         ; preds = %while.body, %if.then52, %if.end44
  %14 = load ptr, ptr %str, align 8, !tbaa !5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call59 = call i32 @fputs(ptr noundef %14, ptr noundef %15) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %land.lhs.true1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %str) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret void
}

declare ptr @srcpos_string(ptr noundef) local_unnamed_addr #7

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i32 @xasprintf_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

declare i32 @xavsprintf_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_property_names(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.033 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not34 = icmp eq ptr %prop.033, null
  br i1 %tobool.not34, label %for.end18, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc16, %for.body.lr.ph
  %prop.035 = phi ptr [ %prop.033, %for.body.lr.ph ], [ %prop.0, %for.inc16 ]
  %0 = load i8, ptr %prop.035, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.cond2.preheader, label %for.inc16

for.cond2.preheader:                              ; preds = %for.body
  %prop2.0.in29 = getelementptr inbounds %struct.property, ptr %prop.035, i64 0, i32 3
  %prop2.030 = load ptr, ptr %prop2.0.in29, align 8, !tbaa !37
  %tobool3.not31 = icmp eq ptr %prop2.030, null
  br i1 %tobool3.not31, label %for.inc16, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %name = getelementptr inbounds %struct.property, ptr %prop.035, i64 0, i32 1
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body4.lr.ph
  %prop2.032 = phi ptr [ %prop2.030, %for.body4.lr.ph ], [ %prop2.0, %for.inc ]
  %1 = load i8, ptr %prop2.032, align 8, !tbaa !36, !range !14
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body4
  %2 = load ptr, ptr %name, align 8, !tbaa !33
  %name8 = getelementptr inbounds %struct.property, ptr %prop2.032, i64 0, i32 1
  %3 = load ptr, ptr %name8, align 8, !tbaa !33
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.035, ptr noundef nonnull @.str.18)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end, %for.body4
  %prop2.0.in = getelementptr inbounds %struct.property, ptr %prop2.032, i64 0, i32 3
  %prop2.0 = load ptr, ptr %prop2.0.in, align 8, !tbaa !37
  %tobool3.not = icmp eq ptr %prop2.0, null
  br i1 %tobool3.not, label %for.inc16, label %for.body4

for.inc16:                                        ; preds = %for.inc, %for.cond2.preheader, %for.body
  %next17 = getelementptr inbounds %struct.property, ptr %prop.035, i64 0, i32 3
  %prop.0 = load ptr, ptr %next17, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end18, label %for.body

for.end18:                                        ; preds = %for.inc16, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_node_name_chars(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %1 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call i64 @strspn(ptr noundef %0, ptr noundef %1) #17
  %call2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %cmp = icmp ult i64 %call, %call2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %call
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %conv = sext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @check_node_name_format(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %call, i32 noundef 64) #17
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.23)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_unitname(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_property_name_chars(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.020 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not21 = icmp eq ptr %prop.020, null
  br i1 %tobool.not21, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.022 = phi ptr [ %prop.020, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %0 = load i8, ptr %prop.022, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.property, ptr %prop.022, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !33
  %2 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call i64 @strspn(ptr noundef %1, ptr noundef %2) #17
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %cmp = icmp ult i64 %call, %call3
  br i1 %cmp, label %do.end, label %for.inc

do.end:                                           ; preds = %if.then
  store i32 3, ptr %status, align 4, !tbaa !22
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %call
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %conv = sext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.022, ptr noundef nonnull @.str.26, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.022, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_is_string(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %0 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %0) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %call1 = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %val) #19
  br i1 %call1, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.29)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %entry
  ret void
}

declare ptr @get_property(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @data_is_one_string(ptr noundef byval(%struct.data) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_name_properties(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %0 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not44 = icmp eq ptr %0, null
  br i1 %tobool.not44, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %name54 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %name54, align 8, !tbaa !33
  %call55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.28) #17
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.end3, label %for.inc

for.body:                                         ; preds = %for.inc
  %name = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !33
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.28) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end3.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body, %for.body.preheader
  %3 = phi ptr [ %4, %for.body ], [ %0, %for.body.preheader ]
  %next = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cleanup, label %for.body

if.end3.loopexit:                                 ; preds = %for.body
  %next.le = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 3
  br label %if.end3

if.end3:                                          ; preds = %if.end3.loopexit, %for.body.preheader
  %.lcssa = phi ptr [ %0, %for.body.preheader ], [ %4, %if.end3.loopexit ]
  %pp.045.lcssa = phi ptr [ %proplist, %for.body.preheader ], [ %next.le, %if.end3.loopexit ]
  %name.le = getelementptr inbounds %struct.property, ptr %.lcssa, i64 0, i32 1
  %val = getelementptr inbounds %struct.property, ptr %.lcssa, i64 0, i32 2
  %5 = load i32, ptr %val, align 8, !tbaa !40
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %6 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %add = add i32 %6, 1
  %cmp4.not = icmp eq i32 %5, %add
  %val6 = getelementptr inbounds %struct.property, ptr %.lcssa, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %val6, align 8, !tbaa !42
  br i1 %cmp4.not, label %lor.lhs.false, label %do.end

lor.lhs.false:                                    ; preds = %if.end3
  %name7 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %8 = load ptr, ptr %name7, align 8, !tbaa !26
  %conv = sext i32 %6 to i64
  %bcmp = tail call i32 @bcmp(ptr %7, ptr %8, i64 %conv)
  %cmp10.not = icmp eq i32 %bcmp, 0
  br i1 %cmp10.not, label %if.else, label %do.end

do.end:                                           ; preds = %lor.lhs.false, %if.end3
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef %7)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %next18 = getelementptr inbounds %struct.property, ptr %.lcssa, i64 0, i32 3
  %9 = load ptr, ptr %next18, align 8, !tbaa !37
  store ptr %9, ptr %pp.045.lcssa, align 8, !tbaa !5
  %10 = load ptr, ptr %name.le, align 8, !tbaa !33
  tail call void @free(ptr noundef %10) #19
  tail call void @data_free(ptr noundef nonnull byval(%struct.data) align 8 %val) #19
  tail call void @free(ptr noundef nonnull %.lcssa) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %for.inc, %entry
  ret void
}

declare void @data_free(ptr noundef byval(%struct.data) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_node_name_vs_property_name(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end6, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call ptr @get_property(ptr noundef nonnull %0, ptr noundef %1) #19
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.33)
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_label_node(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %labels = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 11
  %l.057 = load ptr, ptr %labels, align 8, !tbaa !5
  %tobool.not58 = icmp eq ptr %l.057, null
  br i1 %tobool.not58, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %l.059 = phi ptr [ %l.0, %for.inc ], [ %l.057, %entry ]
  %0 = load i8, ptr %l.059, align 8, !tbaa !44, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %label = getelementptr inbounds %struct.label, ptr %l.059, i64 0, i32 1
  %1 = load ptr, ptr %label, align 8, !tbaa !46
  tail call fastcc void @check_duplicate_label(ptr noundef %c, ptr noundef %dti, ptr noundef %1, ptr noundef %node, ptr noundef null, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %next = getelementptr inbounds %struct.label, ptr %l.059, i64 0, i32 2
  %l.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %l.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.068 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool3.not69 = icmp eq ptr %prop.068, null
  br i1 %tobool3.not69, label %for.end31, label %for.body4

for.body4:                                        ; preds = %for.inc29, %for.end
  %prop.070 = phi ptr [ %prop.0, %for.inc29 ], [ %prop.068, %for.end ]
  %2 = load i8, ptr %prop.070, align 8, !tbaa !36, !range !14
  %tobool6.not = icmp eq i8 %2, 0
  br i1 %tobool6.not, label %if.then7, label %for.inc29

if.then7:                                         ; preds = %for.body4
  %markers = getelementptr inbounds %struct.property, ptr %prop.070, i64 0, i32 2, i32 2
  %3 = load ptr, ptr %markers, align 8, !tbaa !47
  %labels8 = getelementptr inbounds %struct.property, ptr %prop.070, i64 0, i32 4
  %l.161 = load ptr, ptr %labels8, align 8, !tbaa !5
  %tobool10.not62 = icmp eq ptr %l.161, null
  br i1 %tobool10.not62, label %for.cond20.preheader, label %for.body11

for.cond20.preheader:                             ; preds = %for.inc17, %if.then7
  %tobool21.not65 = icmp eq ptr %3, null
  br i1 %tobool21.not65, label %for.inc29, label %for.body22

for.body11:                                       ; preds = %for.inc17, %if.then7
  %l.163 = phi ptr [ %l.1, %for.inc17 ], [ %l.161, %if.then7 ]
  %4 = load i8, ptr %l.163, align 8, !tbaa !44, !range !14
  %tobool13.not = icmp eq i8 %4, 0
  br i1 %tobool13.not, label %if.then14, label %for.inc17

if.then14:                                        ; preds = %for.body11
  %label15 = getelementptr inbounds %struct.label, ptr %l.163, i64 0, i32 1
  %5 = load ptr, ptr %label15, align 8, !tbaa !46
  tail call fastcc void @check_duplicate_label(ptr noundef %c, ptr noundef %dti, ptr noundef %5, ptr noundef %node, ptr noundef nonnull %prop.070, ptr noundef null)
  br label %for.inc17

for.inc17:                                        ; preds = %if.then14, %for.body11
  %next18 = getelementptr inbounds %struct.label, ptr %l.163, i64 0, i32 2
  %l.1 = load ptr, ptr %next18, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %l.1, null
  br i1 %tobool10.not, label %for.cond20.preheader, label %for.body11

for.body22:                                       ; preds = %for.inc25, %for.cond20.preheader
  %m.066 = phi ptr [ %8, %for.inc25 ], [ %3, %for.cond20.preheader ]
  %6 = load i32, ptr %m.066, align 8, !tbaa !48
  %cmp = icmp eq i32 %6, 3
  br i1 %cmp, label %if.then23, label %for.inc25

if.then23:                                        ; preds = %for.body22
  %ref = getelementptr inbounds %struct.marker, ptr %m.066, i64 0, i32 2
  %7 = load ptr, ptr %ref, align 8, !tbaa !50
  tail call fastcc void @check_duplicate_label(ptr noundef %c, ptr noundef %dti, ptr noundef %7, ptr noundef %node, ptr noundef nonnull %prop.070, ptr noundef nonnull %m.066)
  br label %for.inc25

for.inc25:                                        ; preds = %if.then23, %for.body22
  %next26 = getelementptr inbounds %struct.marker, ptr %m.066, i64 0, i32 3
  %8 = load ptr, ptr %next26, align 8, !tbaa !51
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %for.inc29, label %for.body22

for.inc29:                                        ; preds = %for.inc25, %for.cond20.preheader, %for.body4
  %next30 = getelementptr inbounds %struct.property, ptr %prop.070, i64 0, i32 3
  %prop.0 = load ptr, ptr %next30, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %prop.0, null
  br i1 %tobool3.not, label %for.end31, label %for.body4

for.end31:                                        ; preds = %for.inc29, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_duplicate_label(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %label, ptr noundef %node, ptr noundef readonly %prop, ptr noundef readnone %mark) unnamed_addr #0 {
entry:
  %othernode = alloca ptr, align 8
  %otherprop = alloca ptr, align 8
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %othernode) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %otherprop) #19
  store ptr null, ptr %otherprop, align 8, !tbaa !5
  %call = tail call ptr @get_node_by_label(ptr noundef %0, ptr noundef %label) #19
  store ptr %call, ptr %othernode, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.end9

if.end:                                           ; preds = %entry
  %call2 = call ptr @get_property_by_label(ptr noundef %0, ptr noundef %label, ptr noundef nonnull %othernode) #19
  store ptr %call2, ptr %otherprop, align 8, !tbaa !5
  %.pr = load ptr, ptr %othernode, align 8, !tbaa !5
  %tobool3.not = icmp eq ptr %.pr, null
  br i1 %tobool3.not, label %if.end6, label %if.end9

if.end6:                                          ; preds = %if.end
  %call5 = call ptr @get_marker_label(ptr noundef %0, ptr noundef %label, ptr noundef nonnull %othernode, ptr noundef nonnull %otherprop) #19
  %.pr59 = load ptr, ptr %othernode, align 8, !tbaa !5
  %tobool7.not = icmp eq ptr %.pr59, null
  br i1 %tobool7.not, label %cleanup, label %if.end6.if.end9thread-pre-split_crit_edge

if.end6.if.end9thread-pre-split_crit_edge:        ; preds = %if.end6
  %.pr63.pre = load ptr, ptr %otherprop, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end6.if.end9thread-pre-split_crit_edge, %if.end, %entry
  %1 = phi ptr [ %call2, %if.end ], [ null, %entry ], [ %.pr63.pre, %if.end6.if.end9thread-pre-split_crit_edge ]
  %othermark.062 = phi ptr [ null, %if.end ], [ null, %entry ], [ %call5, %if.end6.if.end9thread-pre-split_crit_edge ]
  %2 = phi ptr [ %.pr, %if.end ], [ %call, %entry ], [ %.pr59, %if.end6.if.end9thread-pre-split_crit_edge ]
  %cmp.not = icmp eq ptr %2, %node
  %cmp10.not = icmp eq ptr %1, %prop
  %or.cond = select i1 %cmp.not, i1 %cmp10.not, i1 false
  %cmp12.not = icmp eq ptr %othermark.062, %mark
  %or.cond57 = select i1 %or.cond, i1 %cmp12.not, i1 false
  br i1 %or.cond57, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end9
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  %tobool15.not = icmp eq ptr %mark, null
  %cond = select i1 %tobool15.not, ptr @.str.37, ptr @.str.36
  %tobool16.not = icmp eq ptr %prop, null
  %cond17 = select i1 %tobool16.not, ptr @.str.37, ptr @.str.38
  br i1 %tobool16.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %do.end
  %name = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !33
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end
  %cond21 = phi ptr [ @.str.37, %do.end ], [ @.str.39, %cond.true ]
  %cond19 = phi ptr [ @.str.37, %do.end ], [ %3, %cond.true ]
  %fullpath = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 6
  %4 = load ptr, ptr %fullpath, align 8, !tbaa !32
  %tobool22.not = icmp eq ptr %othermark.062, null
  %cond23 = select i1 %tobool22.not, ptr @.str.37, ptr @.str.36
  %tobool24.not = icmp eq ptr %1, null
  %cond25 = select i1 %tobool24.not, ptr @.str.37, ptr @.str.38
  br i1 %tobool24.not, label %cond.end30, label %cond.true27

cond.true27:                                      ; preds = %cond.end
  %name28 = getelementptr inbounds %struct.property, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %name28, align 8, !tbaa !33
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true27, %cond.end
  %cond33 = phi ptr [ @.str.37, %cond.end ], [ @.str.39, %cond.true27 ]
  %cond31 = phi ptr [ @.str.37, %cond.end ], [ %5, %cond.true27 ]
  %fullpath34 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %fullpath34, align 8, !tbaa !32
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %label, ptr noundef nonnull %cond, ptr noundef nonnull %cond17, ptr noundef %cond19, ptr noundef nonnull %cond21, ptr noundef %4, ptr noundef nonnull %cond23, ptr noundef nonnull %cond25, ptr noundef %cond31, ptr noundef nonnull %cond33, ptr noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %cond.end30, %if.end9, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %otherprop) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %othernode) #19
  ret void
}

declare ptr @get_node_by_label(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @get_property_by_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @get_marker_label(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_explicit_phandles(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !19
  %phandle1 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 8
  %1 = load i32, ptr %phandle1, align 4, !tbaa !52
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.check_explicit_phandles) #21
  unreachable

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @check_phandle_prop(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef nonnull @.str.43)
  %call2 = tail call fastcc i32 @check_phandle_prop(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef nonnull @.str.44)
  %tobool3 = icmp ne i32 %call, 0
  %tobool4 = icmp ne i32 %call2, 0
  %or.cond = select i1 %tobool3, i1 true, i1 %tobool4
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %or.cond38 = select i1 %tobool4, i1 %tobool3, i1 false
  %or.cond38.not = xor i1 %or.cond38, true
  %cmp.not = icmp eq i32 %call, %call2
  %or.cond67 = select i1 %or.cond38.not, i1 true, i1 %cmp.not
  br i1 %or.cond67, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end6
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.45)
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end6
  %tobool16 = icmp eq i32 %call2, 0
  %or.cond39 = select i1 %tobool16, i1 true, i1 %tobool3
  %spec.select = select i1 %or.cond39, i32 %call, i32 %call2
  %call21 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %spec.select) #19
  %tobool22.not = icmp eq ptr %call21, null
  %cmp24.not = icmp eq ptr %call21, %node
  %or.cond68 = or i1 %tobool22.not, %cmp24.not
  br i1 %or.cond68, label %if.end33, label %do.end29

do.end29:                                         ; preds = %if.end15
  %status30 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status30, align 4, !tbaa !22
  %fullpath = getelementptr inbounds %struct.node, ptr %call21, i64 0, i32 6
  %2 = load ptr, ptr %fullpath, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef %spec.select, ptr noundef %2)
  br label %cleanup

if.end33:                                         ; preds = %if.end15
  store i32 %spec.select, ptr %phandle1, align 4, !tbaa !52
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end29, %if.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_phandle_prop(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node, ptr noundef %propname) unnamed_addr #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !19
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %propname) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  %name = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.47, i32 noundef %1, ptr noundef %2)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %markers = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2, i32 2
  %m.075 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool10.not76 = icmp eq ptr %m.075, null
  br i1 %tobool10.not76, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end8
  %m.077 = phi ptr [ %m.0, %for.inc ], [ %m.075, %if.end8 ]
  %3 = load i32, ptr %m.077, align 8, !tbaa !48
  %cmp11 = icmp eq i32 %3, 1
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  %offset = getelementptr inbounds %struct.marker, ptr %m.077, i64 0, i32 1
  %4 = load i32, ptr %offset, align 4, !tbaa !53
  %cmp14 = icmp eq i32 %4, 0
  br i1 %cmp14, label %if.end17, label %if.else

if.else:                                          ; preds = %if.then13
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef 505, ptr noundef nonnull @__PRETTY_FUNCTION__.check_phandle_prop) #21
  unreachable

if.end17:                                         ; preds = %if.then13
  %ref = getelementptr inbounds %struct.marker, ptr %m.077, i64 0, i32 2
  %5 = load ptr, ptr %ref, align 8, !tbaa !50
  %call18 = tail call ptr @get_node_by_ref(ptr noundef %0, ptr noundef %5) #19
  %cmp19.not = icmp eq ptr %call18, %node
  br i1 %cmp19.not, label %cleanup, label %do.end25

do.end25:                                         ; preds = %if.end17
  %status26 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status26, align 4, !tbaa !22
  %name27 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 1
  %6 = load ptr, ptr %name27, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef %6)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.marker, ptr %m.077, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool10.not = icmp eq ptr %m.0, null
  br i1 %tobool10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end8
  %call32 = tail call i32 @propval_cell(ptr noundef nonnull %call) #19
  %7 = add i32 %call32, -1
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %cleanup, label %do.end38

do.end38:                                         ; preds = %for.end
  %status39 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status39, align 4, !tbaa !22
  %name40 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 1
  %9 = load ptr, ptr %name40, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.50, i32 noundef %call32, ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %for.end, %do.end25, %if.end17, %do.end, %entry
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end38 ], [ 0, %entry ], [ 0, %do.end25 ], [ 0, %if.end17 ], [ %call32, %for.end ]
  ret i32 %retval.0
}

declare ptr @get_node_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @get_node_by_ref(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @propval_cell(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @fixup_phandle_references(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !19
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.063 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not64 = icmp eq ptr %prop.063, null
  br i1 %tobool.not64, label %for.end39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc37, %for.body.lr.ph
  %prop.065 = phi ptr [ %prop.063, %for.body.lr.ph ], [ %prop.0, %for.inc37 ]
  %1 = load i8, ptr %prop.065, align 8, !tbaa !36, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then, label %for.inc37

if.then:                                          ; preds = %for.body
  %val = getelementptr inbounds %struct.property, ptr %prop.065, i64 0, i32 2
  %markers = getelementptr inbounds %struct.property, ptr %prop.065, i64 0, i32 2, i32 2
  %m.060 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool4.not61 = icmp eq ptr %m.060, null
  br i1 %tobool4.not61, label %for.inc37, label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %if.then
  %val30 = getelementptr inbounds %struct.property, ptr %prop.065, i64 0, i32 2, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %for.body5.lr.ph
  %m.062 = phi ptr [ %m.060, %for.body5.lr.ph ], [ %m.0, %for.inc ]
  %2 = load i32, ptr %m.062, align 8, !tbaa !48
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body5
  %offset = getelementptr inbounds %struct.marker, ptr %m.062, i64 0, i32 1
  %3 = load i32, ptr %offset, align 4, !tbaa !53
  %conv = zext i32 %3 to i64
  %add = add nuw nsw i64 %conv, 4
  %4 = load i32, ptr %val, align 8, !tbaa !40
  %conv8 = zext i32 %4 to i64
  %cmp9.not = icmp ugt i64 %add, %conv8
  br i1 %cmp9.not, label %if.else, label %if.end

if.else:                                          ; preds = %if.then6
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.42, i32 noundef 614, ptr noundef nonnull @__PRETTY_FUNCTION__.fixup_phandle_references) #21
  unreachable

if.end:                                           ; preds = %if.then6
  %ref = getelementptr inbounds %struct.marker, ptr %m.062, i64 0, i32 2
  %5 = load ptr, ptr %ref, align 8, !tbaa !50
  %call = tail call ptr @get_node_by_ref(ptr noundef %0, ptr noundef %5) #19
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then13, label %if.end26

if.then13:                                        ; preds = %if.end
  %6 = load i32, ptr %dti, align 8, !tbaa !54
  %and = and i32 %6, 2
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.end, label %if.else20

do.end:                                           ; preds = %if.then13
  store i32 3, ptr %status, align 4, !tbaa !22
  %7 = load ptr, ptr %ref, align 8, !tbaa !50
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef %7)
  br label %for.inc

if.else20:                                        ; preds = %if.then13
  %8 = load ptr, ptr %val30, align 8, !tbaa !42
  %9 = load i32, ptr %offset, align 4, !tbaa !53
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %idx.ext
  store i32 -1, ptr %add.ptr, align 4, !tbaa !18
  br label %for.inc

if.end26:                                         ; preds = %if.end
  %call27 = tail call i32 @get_node_phandle(ptr noundef %0, ptr noundef nonnull %call) #19
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %call27) #19
  %10 = load ptr, ptr %val30, align 8, !tbaa !42
  %11 = load i32, ptr %offset, align 4, !tbaa !53
  %idx.ext32 = zext i32 %11 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %10, i64 %idx.ext32
  store i32 %rev.i, ptr %add.ptr33, align 4, !tbaa !18
  %call34 = tail call ptr @reference_node(ptr noundef nonnull %call) #19
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.else20, %do.end, %for.body5
  %next = getelementptr inbounds %struct.marker, ptr %m.062, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool4.not = icmp eq ptr %m.0, null
  br i1 %tobool4.not, label %for.inc37, label %for.body5

for.inc37:                                        ; preds = %for.inc, %if.then, %for.body
  %next38 = getelementptr inbounds %struct.property, ptr %prop.065, i64 0, i32 3
  %prop.0 = load ptr, ptr %next38, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end39, label %for.body

for.end39:                                        ; preds = %for.inc37, %entry
  ret void
}

declare i32 @get_node_phandle(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @reference_node(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @fixup_path_references(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %tmp = alloca %struct.data, align 8
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !19
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.047 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not48 = icmp eq ptr %prop.047, null
  br i1 %tobool.not48, label %for.end25, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc23, %for.body.lr.ph
  %prop.049 = phi ptr [ %prop.047, %for.body.lr.ph ], [ %prop.0, %for.inc23 ]
  %1 = load i8, ptr %prop.049, align 8, !tbaa !36, !range !14
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then, label %for.inc23

if.then:                                          ; preds = %for.body
  %val = getelementptr inbounds %struct.property, ptr %prop.049, i64 0, i32 2
  %markers = getelementptr inbounds %struct.property, ptr %prop.049, i64 0, i32 2, i32 2
  %m.044 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool4.not45 = icmp eq ptr %m.044, null
  br i1 %tobool4.not45, label %for.inc23, label %for.body5

for.body5:                                        ; preds = %for.inc, %if.then
  %m.046 = phi ptr [ %m.0, %for.inc ], [ %m.044, %if.then ]
  %2 = load i32, ptr %m.046, align 8, !tbaa !48
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body5
  %offset = getelementptr inbounds %struct.marker, ptr %m.046, i64 0, i32 1
  %3 = load i32, ptr %offset, align 4, !tbaa !53
  %4 = load i32, ptr %val, align 8, !tbaa !40
  %cmp8.not = icmp ugt i32 %3, %4
  br i1 %cmp8.not, label %if.else, label %if.end

if.else:                                          ; preds = %if.then6
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.42, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.fixup_path_references) #21
  unreachable

if.end:                                           ; preds = %if.then6
  %ref = getelementptr inbounds %struct.marker, ptr %m.046, i64 0, i32 2
  %5 = load ptr, ptr %ref, align 8, !tbaa !50
  %call = call ptr @get_node_by_ref(ptr noundef %0, ptr noundef %5) #19
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end
  store i32 3, ptr %status, align 4, !tbaa !22
  %6 = load ptr, ptr %ref, align 8, !tbaa !50
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef %6)
  br label %for.inc

if.end16:                                         ; preds = %if.end
  %fullpath = getelementptr inbounds %struct.node, ptr %call, i64 0, i32 6
  %7 = load ptr, ptr %fullpath, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #19
  %call19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #17
  %8 = trunc i64 %call19 to i32
  %conv = add i32 %8, 1
  call void @data_insert_at_marker(ptr nonnull sret(%struct.data) align 8 %tmp, ptr noundef nonnull byval(%struct.data) align 8 %val, ptr noundef nonnull %m.046, ptr noundef %7, i32 noundef %conv) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %val, ptr noundef nonnull align 8 dereferenceable(24) %tmp, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #19
  %call20 = call ptr @reference_node(ptr noundef nonnull %call) #19
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %do.end, %for.body5
  %next = getelementptr inbounds %struct.marker, ptr %m.046, i64 0, i32 3
  %m.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool4.not = icmp eq ptr %m.0, null
  br i1 %tobool4.not, label %for.inc23, label %for.body5

for.inc23:                                        ; preds = %for.inc, %if.then, %for.body
  %next24 = getelementptr inbounds %struct.property, ptr %prop.049, i64 0, i32 3
  %prop.0 = load ptr, ptr %next24, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end25, label %for.body

for.end25:                                        ; preds = %for.inc23, %entry
  ret void
}

declare void @data_insert_at_marker(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal void @fixup_omit_unused_nodes(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %dti, ptr noundef %node) #0 {
entry:
  %0 = load i32, ptr @generate_symbols, align 4, !tbaa !18
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %labels = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 11
  %1 = load ptr, ptr %labels, align 8, !tbaa !56
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end, label %if.end6

if.end:                                           ; preds = %land.lhs.true, %entry
  %omit_if_unused = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 14
  %2 = load i8, ptr %omit_if_unused, align 8, !tbaa !57, !range !14
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end6, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %is_referenced = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 15
  %3 = load i8, ptr %is_referenced, align 1, !tbaa !58, !range !14
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true3
  tail call void @delete_node(ptr noundef nonnull %node) #19
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true3, %if.end, %land.lhs.true
  ret void
}

declare void @delete_node(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_is_cell(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %0 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %0) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.59)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_is_string_list(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %0 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %0) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %cmp30 = icmp sgt i32 %1, 0
  br i1 %cmp30, label %while.body.preheader, label %cleanup

while.body.preheader:                             ; preds = %if.end
  %val1 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val1, align 8, !tbaa !42
  br label %while.body

while.body:                                       ; preds = %if.end11, %while.body.preheader
  %str.032 = phi ptr [ %add.ptr, %if.end11 ], [ %2, %while.body.preheader ]
  %rem.031 = phi i32 [ %sub, %if.end11 ], [ %1, %while.body.preheader ]
  %conv29 = zext i32 %rem.031 to i64
  %call3 = tail call i64 @strnlen(ptr noundef %str.032, i64 noundef %conv29) #17
  %conv4 = trunc i64 %call3 to i32
  %cmp5 = icmp eq i32 %rem.031, %conv4
  br i1 %cmp5, label %do.end, label %if.end11

do.end:                                           ; preds = %while.body
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.72)
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %add = add nsw i32 %conv4, 1
  %sub = sub nsw i32 %rem.031, %add
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, ptr %str.032, i64 %idx.ext
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %while.body, label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @check_names_is_string_list(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.017 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not18 = icmp eq ptr %prop.017, null
  br i1 %tobool.not18, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %status.i = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.019 = phi ptr [ %prop.017, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %0 = load i8, ptr %prop.019, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.property, ptr %prop.019, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !33
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %conv.i = trunc i64 %call.i to i32
  %cmp.i = icmp ult i32 %conv.i, 6
  br i1 %cmp.i, label %for.inc, label %strends.exit

strends.exit:                                     ; preds = %if.then
  %idx.ext.i = and i64 %call.i, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 -6
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %call6.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5.i, ptr noundef nonnull dereferenceable(7) @.str.74) #17
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end, label %for.inc

if.end:                                           ; preds = %strends.exit
  store ptr %1, ptr %data, align 8, !tbaa !38
  %call.i11 = tail call ptr @get_property(ptr noundef %node, ptr noundef %1) #19
  %tobool.not.i = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i, label %for.inc, label %if.end.i12

if.end.i12:                                       ; preds = %if.end
  %val.i = getelementptr inbounds %struct.property, ptr %call.i11, i64 0, i32 2
  %2 = load i32, ptr %val.i, align 8, !tbaa !40
  %cmp30.i = icmp sgt i32 %2, 0
  br i1 %cmp30.i, label %while.body.preheader.i, label %for.inc

while.body.preheader.i:                           ; preds = %if.end.i12
  %val1.i = getelementptr inbounds %struct.property, ptr %call.i11, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %val1.i, align 8, !tbaa !42
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i, %while.body.preheader.i
  %str.032.i = phi ptr [ %add.ptr.i14, %if.end11.i ], [ %3, %while.body.preheader.i ]
  %rem.031.i = phi i32 [ %sub.i, %if.end11.i ], [ %2, %while.body.preheader.i ]
  %conv29.i = zext i32 %rem.031.i to i64
  %call3.i = tail call i64 @strnlen(ptr noundef %str.032.i, i64 noundef %conv29.i) #17
  %conv4.i = trunc i64 %call3.i to i32
  %cmp5.i = icmp eq i32 %rem.031.i, %conv4.i
  br i1 %cmp5.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %while.body.i
  store i32 3, ptr %status.i, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call.i11, ptr noundef nonnull @.str.72) #19
  br label %for.inc

if.end11.i:                                       ; preds = %while.body.i
  %add.i = add nsw i32 %conv4.i, 1
  %sub.i = sub nsw i32 %rem.031.i, %add.i
  %idx.ext.i13 = sext i32 %add.i to i64
  %add.ptr.i14 = getelementptr inbounds i8, ptr %str.032.i, i64 %idx.ext.i13
  %cmp.i15 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i15, label %while.body.i, label %for.inc

for.inc:                                          ; preds = %if.end11.i, %do.end.i, %if.end.i12, %if.end, %strends.exit, %if.then, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.019, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_property_name_chars_strict(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.056 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not57 = icmp eq ptr %prop.056, null
  br i1 %tobool.not57, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.058 = phi ptr [ %prop.056, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %0 = load i8, ptr %prop.058, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %name2 = getelementptr inbounds %struct.property, ptr %prop.058, i64 0, i32 1
  %1 = load ptr, ptr %name2, align 8, !tbaa !33
  %2 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call i64 @strspn(ptr noundef %1, ptr noundef %2) #17
  %call4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %cmp = icmp eq i64 %call, %call4
  br i1 %cmp, label %for.inc, label %if.end

if.end:                                           ; preds = %if.then
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(12) @.str.63) #17
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %for.inc, label %if.end9

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %call
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %cmp10 = icmp eq i8 %3, 35
  br i1 %cmp10, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end9
  %cmp12 = icmp eq i64 %call, 0
  br i1 %cmp12, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sub = add i64 %call, -1
  %arrayidx14 = getelementptr inbounds i8, ptr %1, i64 %sub
  %4 = load i8, ptr %arrayidx14, align 1, !tbaa !39
  %cmp16 = icmp eq i8 %4, 44
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %add = add i64 %call, 1
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %add
  %call20 = tail call i64 @strspn(ptr noundef %add.ptr, ptr noundef %2) #17
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %lor.lhs.false, %if.end9
  %name.0 = phi ptr [ %add.ptr, %if.then18 ], [ %1, %lor.lhs.false ], [ %1, %if.end9 ]
  %n.0 = phi i64 [ %call20, %if.then18 ], [ %call, %lor.lhs.false ], [ %call, %if.end9 ]
  %call22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name.0) #17
  %cmp23 = icmp ult i64 %n.0, %call22
  br i1 %cmp23, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end21
  store i32 3, ptr %status, align 4, !tbaa !22
  %arrayidx27 = getelementptr inbounds i8, ptr %name.0, i64 %n.0
  %5 = load i8, ptr %arrayidx27, align 1, !tbaa !39
  %conv28 = sext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.058, ptr noundef nonnull @.str.77, i32 noundef %conv28)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end21, %if.end, %if.then, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.058, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_node_name_chars_strict(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %1 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call i64 @strspn(ptr noundef %0, ptr noundef %1) #17
  %conv = trunc i64 %call to i32
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %2 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %cmp = icmp sgt i32 %2, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %conv4 = sext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef %conv4)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixup_addr_size_cells(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %dti, ptr noundef %node) #0 {
entry:
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  store i32 -1, ptr %addr_cells, align 8, !tbaa !59
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  store i32 -1, ptr %size_cells, align 4, !tbaa !60
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.58) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @propval_cell(ptr noundef nonnull %call) #19
  store i32 %call1, ptr %addr_cells, align 8, !tbaa !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.61) #19
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @propval_cell(ptr noundef nonnull %call3) #19
  store i32 %call6, ptr %size_cells, align 4, !tbaa !60
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_reg_format(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.82) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.83)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end6
  %status12 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status12, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.84)
  %.pre = load ptr, ptr %parent, align 8, !tbaa !43
  %.pre71 = load i32, ptr %val, align 8, !tbaa !40
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.end6
  %2 = phi i32 [ %.pre71, %do.end11 ], [ %1, %if.end6 ]
  %3 = phi ptr [ %.pre, %do.end11 ], [ %0, %if.end6 ]
  %addr_cells17 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 9
  %4 = load i32, ptr %addr_cells17, align 8, !tbaa !59
  %cmp18 = icmp eq i32 %4, -1
  %spec.select = select i1 %cmp18, i32 2, i32 %4
  %size_cells22 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %size_cells22, align 4, !tbaa !60
  %cmp23 = icmp eq i32 %5, -1
  %cond29 = select i1 %cmp23, i32 1, i32 %5
  %add = add nsw i32 %cond29, %spec.select
  %mul = shl i32 %add, 2
  %cmp.i = icmp eq i32 %mul, 0
  br i1 %cmp.i, label %is_multiple_of.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end15
  %rem.i = srem i32 %2, %mul
  br label %is_multiple_of.exit

is_multiple_of.exit:                              ; preds = %if.else.i, %if.end15
  %retval.0.in.i = phi i32 [ %rem.i, %if.else.i ], [ %2, %if.end15 ]
  %retval.0.i = icmp eq i32 %retval.0.in.i, 0
  br i1 %retval.0.i, label %cleanup, label %do.end38

do.end38:                                         ; preds = %is_multiple_of.exit
  %status39 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status39, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.85, i32 noundef %2, i32 noundef %spec.select, i32 noundef %cond29)
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %is_multiple_of.exit, %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_ranges_format(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %0 = load ptr, ptr %data, align 8, !tbaa !38
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %0) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %1 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.88, ptr noundef %0)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %addr_cells = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 9
  %2 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp = icmp eq i32 %2, -1
  %spec.select = select i1 %cmp, i32 2, i32 %2
  %size_cells = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 10
  %3 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp11 = icmp eq i32 %3, -1
  %cond17 = select i1 %cmp11, i32 1, i32 %3
  %addr_cells18 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %4 = load i32, ptr %addr_cells18, align 8, !tbaa !59
  %cmp19 = icmp eq i32 %4, -1
  %cond24 = select i1 %cmp19, i32 2, i32 %4
  %size_cells25 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %5 = load i32, ptr %size_cells25, align 4, !tbaa !60
  %cmp26 = icmp eq i32 %5, -1
  %cond31 = select i1 %cmp26, i32 1, i32 %5
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %6 = load i32, ptr %val, align 8, !tbaa !40
  %cmp34 = icmp eq i32 %6, 0
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end6
  %cmp37.not = icmp eq i32 %spec.select, %cond24
  br i1 %cmp37.not, label %if.end48, label %do.end43

do.end43:                                         ; preds = %if.then36
  %status44 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status44, align 4, !tbaa !22
  %fullpath = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %fullpath, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.89, ptr noundef %0, i32 noundef %cond24, ptr noundef %7, i32 noundef %spec.select)
  br label %if.end48

if.end48:                                         ; preds = %do.end43, %if.then36
  %cmp49.not = icmp eq i32 %cond17, %cond31
  br i1 %cmp49.not, label %cleanup, label %do.end55

do.end55:                                         ; preds = %if.end48
  %status56 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status56, align 4, !tbaa !22
  %8 = load ptr, ptr %parent, align 8, !tbaa !43
  %fullpath58 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 6
  %9 = load ptr, ptr %fullpath58, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.90, ptr noundef %0, i32 noundef %cond31, ptr noundef %9, i32 noundef %cond17)
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %add = add nsw i32 %cond24, %spec.select
  %add32 = add nsw i32 %add, %cond31
  %mul = shl i32 %add32, 2
  %cmp.i = icmp eq i32 %mul, 0
  br i1 %cmp.i, label %do.end69, label %is_multiple_of.exit

is_multiple_of.exit:                              ; preds = %if.else
  %rem.i = srem i32 %6, %mul
  %retval.0.i = icmp eq i32 %rem.i, 0
  br i1 %retval.0.i, label %cleanup, label %do.end69

do.end69:                                         ; preds = %is_multiple_of.exit, %if.else
  %status70 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status70, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.91, ptr noundef %0, i32 noundef %6, i32 noundef %spec.select, i32 noundef %cond24, i32 noundef %cond31)
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %is_multiple_of.exit, %do.end55, %if.end48, %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unit_address_vs_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  %call1 = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.82) #19
  %call2 = tail call ptr @get_subnode(ptr noundef %node, ptr noundef nonnull @.str.95) #19
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.then12

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.87) #19
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %val = getelementptr inbounds %struct.property, ptr %call5, i64 0, i32 2
  %0 = load i32, ptr %val, align 8, !tbaa !40
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true, %if.end
  %1 = load i8, ptr %call, align 1, !tbaa !39
  %tobool13.not = icmp eq i8 %1, 0
  br i1 %tobool13.not, label %cleanup.sink.split, label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.then4
  %2 = load i8, ptr %call, align 1, !tbaa !39
  %tobool20.not = icmp eq i8 %2, 0
  br i1 %tobool20.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then12
  %.str.96.sink = phi ptr [ @.str.96, %if.then12 ], [ @.str.97, %if.else ]
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull %.str.96.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else, %if.then12, %entry
  ret void
}

declare ptr @get_subnode(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_unit_address_format(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %call, align 1, !tbaa !39
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @strncmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(3) @.str.99, i64 noundef 2) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.100)
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 2
  %.pr = load i8, ptr %add.ptr, align 1, !tbaa !39
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end5
  %3 = phi i8 [ %.pr, %do.end ], [ %2, %if.end5 ]
  %unitname.0 = phi ptr [ %add.ptr, %do.end ], [ %call, %if.end5 ]
  %cmp = icmp eq i8 %3, 48
  br i1 %cmp, label %land.lhs.true15, label %cleanup

land.lhs.true15:                                  ; preds = %if.end12
  %call16 = tail call ptr @__ctype_b_loc() #22
  %4 = load ptr, ptr %call16, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds i8, ptr %unitname.0, i64 1
  %5 = load i8, ptr %arrayidx17, align 1, !tbaa !39
  %idxprom = sext i8 %5 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %4, i64 %idxprom
  %6 = load i16, ptr %arrayidx19, align 2, !tbaa !62
  %7 = and i16 %6, 4096
  %tobool21.not = icmp eq i16 %7, 0
  br i1 %tobool21.not, label %cleanup, label %do.end26

do.end26:                                         ; preds = %land.lhs.true15
  %status27 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.101)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %land.lhs.true15, %if.end12, %if.end, %land.lhs.true
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal void @check_pci_bridge(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.63) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %val1 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2, i32 1
  %0 = load ptr, ptr %val1, align 8, !tbaa !42
  %call2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #17
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @pci_bus, ptr %bus, align 8, !tbaa !61
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %1 = load i32, ptr %basenamelen, align 8, !tbaa !41
  switch i32 %1, label %do.end [
    i32 3, label %land.lhs.true
    i32 4, label %land.lhs.true15
  ]

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp168 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %2, ptr noundef nonnull dereferenceable(3) @.str.103, i64 3)
  %cmp8 = icmp eq i32 %bcmp168, 0
  br i1 %cmp8, label %if.end26, label %do.end

land.lhs.true15:                                  ; preds = %if.end
  %name16 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %3 = load ptr, ptr %name16, align 8, !tbaa !26
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %3, ptr noundef nonnull dereferenceable(4) @.str.104, i64 4)
  %cmp20 = icmp eq i32 %bcmp, 0
  br i1 %cmp20, label %if.end26, label %do.end

do.end:                                           ; preds = %land.lhs.true15, %land.lhs.true, %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.105)
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.lhs.true15, %land.lhs.true
  %call27 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.87) #19
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end26
  %status34 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status34, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.106)
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.end26
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %4 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %phi.cmp = icmp eq i32 %4, 3
  br i1 %phi.cmp, label %if.end51, label %do.end47

do.end47:                                         ; preds = %if.end37
  %status48 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status48, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.107)
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %if.end37
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %5 = load i32, ptr %size_cells, align 4, !tbaa !60
  %phi.cmp167 = icmp eq i32 %5, 2
  br i1 %phi.cmp167, label %if.end69, label %do.end65

do.end65:                                         ; preds = %if.end51
  %status66 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status66, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.108)
  br label %if.end69

if.end69:                                         ; preds = %do.end65, %if.end51
  %call70 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.109) #19
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %cleanup, label %if.end73

if.end73:                                         ; preds = %if.end69
  %val74 = getelementptr inbounds %struct.property, ptr %call70, i64 0, i32 2
  %6 = load i32, ptr %val74, align 8, !tbaa !40
  %cmp76.not = icmp eq i32 %6, 8
  br i1 %cmp76.not, label %if.end86, label %cleanup.sink.split

if.end86:                                         ; preds = %if.end73
  %val88 = getelementptr inbounds %struct.property, ptr %call70, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %val88, align 8, !tbaa !42
  %8 = load i32, ptr %7, align 4, !tbaa !18
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %8) #19
  %arrayidx90 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = load i32, ptr %arrayidx90, align 4, !tbaa !18
  %rev.i170 = tail call i32 @llvm.bswap.i32(i32 %9) #19
  %cmp92 = icmp ugt i32 %rev.i, %rev.i170
  br i1 %cmp92, label %do.end98, label %if.end102

do.end98:                                         ; preds = %if.end86
  %status99 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status99, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call70, ptr noundef nonnull @.str.111)
  %.pre = load i32, ptr %arrayidx90, align 4, !tbaa !18
  %.pre173 = tail call i32 @llvm.bswap.i32(i32 %.pre) #19
  br label %if.end102

if.end102:                                        ; preds = %do.end98, %if.end86
  %rev.i171.pre-phi = phi i32 [ %.pre173, %do.end98 ], [ %rev.i170, %if.end86 ]
  %cmp105 = icmp ugt i32 %rev.i171.pre-phi, 255
  br i1 %cmp105, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end102, %if.end73
  %.str.112.sink = phi ptr [ @.str.110, %if.end73 ], [ @.str.112, %if.end102 ]
  %status112 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status112, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call70, ptr noundef nonnull %.str.112.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end102, %if.end69, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_pci_device_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %unit_addr = alloca [5 x i8], align 1
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %unit_addr) #19
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @pci_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %val6 = getelementptr inbounds %struct.property, ptr %call2, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val6, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !18
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %do.end

lor.lhs.false8:                                   ; preds = %if.end5
  %arrayidx9 = getelementptr inbounds i32, ptr %2, i64 2
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !18
  %tobool10.not = icmp eq i32 %4, 0
  br i1 %tobool10.not, label %if.end15, label %do.end

do.end:                                           ; preds = %lor.lhs.false8, %if.end5
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call2, ptr noundef nonnull @.str.115)
  br label %if.end15

if.end15:                                         ; preds = %do.end, %lor.lhs.false8
  %5 = load i32, ptr %2, align 4, !tbaa !18
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %5) #19
  %and = lshr i32 %rev.i, 11
  %shr = and i32 %and, 31
  %and18 = lshr i32 %rev.i, 8
  %shr19 = and i32 %and18, 7
  %tobool21.not = icmp ult i32 %rev.i, 16777216
  br i1 %tobool21.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end15
  %status27 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call2, ptr noundef nonnull @.str.116)
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.end15
  %and31 = and i32 %rev.i, 255
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end41, label %do.end37

do.end37:                                         ; preds = %if.end30
  %status38 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status38, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call2, ptr noundef nonnull @.str.117)
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %if.end30
  %cmp42 = icmp eq i32 %shr19, 0
  br i1 %cmp42, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end41
  %call44 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 5, ptr noundef nonnull @.str.118, i32 noundef %shr) #19
  %call46 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull %unit_addr) #17
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.then43, %if.end41
  %call52 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 5, ptr noundef nonnull @.str.119, i32 noundef %shr, i32 noundef %shr19) #19
  %call54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull %unit_addr) #17
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %cleanup, label %do.end61

do.end61:                                         ; preds = %if.end50
  %status62 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status62, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull %unit_addr)
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %if.end50, %if.then43, %if.end, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %unit_addr) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @check_pci_device_bus_num(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @pci_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %val5 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val5, align 8, !tbaa !42
  %3 = load i32, ptr %2, align 4, !tbaa !18
  %4 = lshr i32 %3, 8
  %shr = and i32 %4, 255
  %5 = load ptr, ptr %parent, align 8, !tbaa !43
  %call8 = tail call ptr @get_property(ptr noundef %5, ptr noundef nonnull @.str.109) #19
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end17, label %if.else

if.else:                                          ; preds = %if.end4
  %val12 = getelementptr inbounds %struct.property, ptr %call8, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %val12, align 8, !tbaa !42
  %7 = load i32, ptr %6, align 4, !tbaa !18
  %rev.i45 = tail call i32 @llvm.bswap.i32(i32 %7) #19
  %arrayidx15 = getelementptr inbounds i32, ptr %6, i64 1
  %8 = load i32, ptr %arrayidx15, align 4, !tbaa !18
  %rev.i46 = tail call i32 @llvm.bswap.i32(i32 %8) #19
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end4
  %min_bus.0 = phi i32 [ %rev.i45, %if.else ], [ 0, %if.end4 ]
  %max_bus.0 = phi i32 [ %rev.i46, %if.else ], [ 0, %if.end4 ]
  %cmp18 = icmp ult i32 %shr, %min_bus.0
  %cmp20 = icmp ugt i32 %shr, %max_bus.0
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end17
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef %call8, ptr noundef nonnull @.str.122, i32 noundef %shr, i32 noundef %min_bus.0, i32 noundef %max_bus.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17, %if.end, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_simple_bus_bridge(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %dti, ptr noundef %node) #0 {
entry:
  %call.i = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.71) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  %val.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2
  %val1.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2, i32 1
  %0 = load ptr, ptr %val1.i, align 8, !tbaa !42
  %1 = load i32, ptr %val.i, align 8, !tbaa !40
  %idx.ext.i = zext i32 %1 to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.ext.i
  %cmp1.not.i = icmp eq i32 %1, 0
  br i1 %cmp1.not.i, label %if.end, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %str.02.i = phi ptr [ %0, %for.body.lr.ph.i ], [ %add.ptr8.i, %for.inc.i ]
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %str.02.i, ptr noundef nonnull dereferenceable(11) @.str.124) #17
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %str.02.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call7.i = tail call i64 @strnlen(ptr noundef %str.02.i, i64 noundef %sub.ptr.sub.i) #17
  %add.i = add i64 %call7.i, 1
  %add.ptr8.i = getelementptr inbounds i8, ptr %str.02.i, i64 %add.i
  %cmp.i = icmp ult ptr %add.ptr8.i, %add.ptr.i
  br i1 %cmp.i, label %for.body.i, label %if.end

if.then:                                          ; preds = %for.body.i
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @simple_bus, ptr %bus, align 8, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i, %if.end.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_simple_bus_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %unit_addr = alloca [17 x i8], align 16
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %unit_addr) #19
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @simple_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %val5 = getelementptr inbounds %struct.property, ptr %call2, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val5, align 8, !tbaa !42
  br label %if.end16

if.else:                                          ; preds = %if.end
  %call6 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.87) #19
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %val8 = getelementptr inbounds %struct.property, ptr %call6, i64 0, i32 2
  %3 = load i32, ptr %val8, align 8, !tbaa !40
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %if.then18, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %val12 = getelementptr inbounds %struct.property, ptr %call6, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %val12, align 8, !tbaa !42
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %5 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp13 = icmp eq i32 %5, -1
  %narrow = select i1 %cmp13, i32 2, i32 %5
  %spec.select = sext i32 %narrow to i64
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %spec.select
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.then4
  %cells.0 = phi ptr [ %2, %if.then4 ], [ %add.ptr, %if.then10 ]
  %tobool17.not = icmp eq ptr %cells.0, null
  br i1 %tobool17.not, label %if.then18, label %if.end30

if.then18:                                        ; preds = %if.end16, %land.lhs.true, %if.else
  %6 = load ptr, ptr %parent, align 8, !tbaa !43
  %parent20 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 4
  %7 = load ptr, ptr %parent20, align 8, !tbaa !43
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %cleanup, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.then18
  %bus23 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  %8 = load ptr, ptr %bus23, align 8, !tbaa !61
  %cmp24 = icmp eq ptr %8, @simple_bus
  br i1 %cmp24, label %cleanup, label %do.end

do.end:                                           ; preds = %land.lhs.true22
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.126)
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  %9 = load ptr, ptr %parent, align 8, !tbaa !43
  %addr_cells32 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 9
  %10 = load i32, ptr %addr_cells32, align 8, !tbaa !59
  %cmp33 = icmp eq i32 %10, -1
  %spec.select89 = select i1 %cmp33, i32 2, i32 %10
  %tobool40.not90 = icmp eq i32 %spec.select89, 0
  br i1 %tobool40.not90, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end30
  %11 = add i32 %spec.select89, -1
  %xtraiter = and i32 %spec.select89, 3
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %while.end.loopexit.unr-lcssa, label %while.body.preheader.new

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %spec.select89, -4
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %cells.193 = phi ptr [ %cells.0, %while.body.preheader.new ], [ %incdec.ptr.3, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.3, %while.body ]
  %incdec.ptr.3 = getelementptr inbounds i32, ptr %cells.193, i64 4
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %while.end.loopexit.unr-lcssa.loopexit, label %while.body

while.end.loopexit.unr-lcssa.loopexit:            ; preds = %while.body
  %incdec.ptr.2 = getelementptr inbounds i32, ptr %cells.193, i64 3
  %13 = load i32, ptr %incdec.ptr.2, align 4, !tbaa !18
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %incdec.ptr.1 = getelementptr inbounds i32, ptr %cells.193, i64 2
  %16 = load i32, ptr %incdec.ptr.1, align 4, !tbaa !18
  %17 = zext i32 %16 to i64
  %18 = or i64 %15, %17
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  br label %while.end.loopexit.unr-lcssa

while.end.loopexit.unr-lcssa:                     ; preds = %while.end.loopexit.unr-lcssa.loopexit, %while.body.preheader
  %or.lcssa.ph = phi i64 [ undef, %while.body.preheader ], [ %19, %while.end.loopexit.unr-lcssa.loopexit ]
  %cells.193.unr = phi ptr [ %cells.0, %while.body.preheader ], [ %incdec.ptr.3, %while.end.loopexit.unr-lcssa.loopexit ]
  %reg.092.unr = phi i64 [ 0, %while.body.preheader ], [ %19, %while.end.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.end, label %while.body.epil

while.body.epil:                                  ; preds = %while.body.epil, %while.end.loopexit.unr-lcssa
  %cells.193.epil = phi ptr [ %incdec.ptr.epil, %while.body.epil ], [ %cells.193.unr, %while.end.loopexit.unr-lcssa ]
  %reg.092.epil = phi i64 [ %or.epil, %while.body.epil ], [ %reg.092.unr, %while.end.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %while.body.epil ], [ 0, %while.end.loopexit.unr-lcssa ]
  %shl.epil = shl i64 %reg.092.epil, 32
  %incdec.ptr.epil = getelementptr inbounds i32, ptr %cells.193.epil, i64 1
  %20 = load i32, ptr %cells.193.epil, align 4, !tbaa !18
  %rev.i.epil = tail call i32 @llvm.bswap.i32(i32 %20) #19
  %conv.epil = zext i32 %rev.i.epil to i64
  %or.epil = or i64 %shl.epil, %conv.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %while.end, label %while.body.epil, !llvm.loop !64

while.end:                                        ; preds = %while.body.epil, %while.end.loopexit.unr-lcssa, %if.end30
  %reg.0.lcssa = phi i64 [ 0, %if.end30 ], [ %or.lcssa.ph, %while.end.loopexit.unr-lcssa ], [ %or.epil, %while.body.epil ]
  %call42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 17, ptr noundef nonnull @.str.127, i64 noundef %reg.0.lcssa) #19
  %call44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull %unit_addr) #17
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %cleanup, label %do.end51

do.end51:                                         ; preds = %while.end
  %status52 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status52, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %unit_addr)
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %while.end, %do.end, %land.lhs.true22, %if.then18, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %unit_addr) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_i2c_bus_bridge(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %0 = load i32, ptr %basenamelen, align 8, !tbaa !41
  switch i32 %0, label %if.end76 [
    i32 7, label %land.lhs.true
    i32 3, label %land.lhs.true21
  ]

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp108 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %1, ptr noundef nonnull dereferenceable(7) @.str.130, i64 7)
  %cmp4 = icmp eq i32 %bcmp108, 0
  br i1 %cmp4, label %if.then, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %bcmp107 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %1, ptr noundef nonnull dereferenceable(7) @.str.131, i64 7)
  %cmp15 = icmp eq i32 %bcmp107, 0
  br i1 %cmp15, label %if.then, label %if.end76

if.then:                                          ; preds = %land.lhs.true10, %land.lhs.true
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @i2c_bus, ptr %bus, align 8, !tbaa !61
  %children48.phi.trans.insert = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %.pre = load ptr, ptr %children48.phi.trans.insert, align 8, !tbaa !66
  br label %if.end47

land.lhs.true21:                                  ; preds = %entry
  %name22 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %2 = load ptr, ptr %name22, align 8, !tbaa !26
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %2, ptr noundef nonnull dereferenceable(3) @.str.132, i64 3)
  %cmp26 = icmp eq i32 %bcmp, 0
  br i1 %cmp26, label %if.then28, label %if.end76

if.then28:                                        ; preds = %land.lhs.true21
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.0111 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not112 = icmp eq ptr %child.0111, null
  br i1 %tobool.not112, label %cleanup.thread, label %for.inc

for.inc:                                          ; preds = %for.inc, %if.then28
  %child.0113 = phi ptr [ %child.0, %for.inc ], [ %child.0111, %if.then28 ]
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.0113, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.inc, %if.then28
  %bus44 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @i2c_bus, ptr %bus44, align 8, !tbaa !61
  br label %if.end47

if.end47:                                         ; preds = %cleanup.thread, %if.then
  %3 = phi ptr [ %child.0111, %cleanup.thread ], [ %.pre, %if.then ]
  %tobool49.not = icmp eq ptr %3, null
  br i1 %tobool49.not, label %if.end76, label %if.end51

if.end51:                                         ; preds = %if.end47
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %4 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %phi.cmp = icmp eq i32 %4, 1
  br i1 %phi.cmp, label %if.end60, label %do.end

do.end:                                           ; preds = %if.end51
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.133)
  br label %if.end60

if.end60:                                         ; preds = %do.end, %if.end51
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %5 = load i32, ptr %size_cells, align 4, !tbaa !60
  %phi.cmp105 = icmp eq i32 %5, 0
  br i1 %phi.cmp105, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end60
  %status74 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status74, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.134)
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end60, %if.end47, %land.lhs.true21, %land.lhs.true10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_i2c_bus_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %unit_addr = alloca [17 x i8], align 16
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %unit_addr) #19
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @i2c_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

if.end6:                                          ; preds = %if.end
  %val5 = getelementptr inbounds %struct.property, ptr %call2, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val5, align 8, !tbaa !42
  %tobool7.not = icmp eq ptr %2, null
  br i1 %tobool7.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6, %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.136)
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %3 = load i32, ptr %2, align 4, !tbaa !18
  %4 = and i32 %3, -65
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call14 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 17, ptr noundef nonnull @.str.118, i32 noundef %5) #19
  %call16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull %unit_addr) #17
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end27, label %do.end22

do.end22:                                         ; preds = %if.end12
  %status23 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status23, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %unit_addr)
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %if.end12
  %val28 = getelementptr inbounds %struct.property, ptr %call2, i64 0, i32 2
  %6 = load i32, ptr %val28, align 8, !tbaa !40
  %cmp3095 = icmp sgt i32 %6, 0
  br i1 %cmp3095, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end27
  %status42 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %cells.197 = phi ptr [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %len.096 = phi i32 [ %6, %for.body.lr.ph ], [ %sub, %for.inc ]
  %incdec.ptr = getelementptr inbounds i32, ptr %cells.197, i64 1
  %7 = load i32, ptr %cells.197, align 4, !tbaa !18
  %rev.i92 = call i32 @llvm.bswap.i32(i32 %7) #19
  %and32 = and i32 %rev.i92, -1073741825
  %tobool34.not = icmp sgt i32 %rev.i92, -1
  %and35 = and i32 %rev.i92, 1073740800
  %cmp36.not = icmp eq i32 %and35, 0
  %or.cond = or i1 %tobool34.not, %cmp36.not
  br i1 %or.cond, label %if.else, label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %cmp45 = icmp ugt i32 %and32, 127
  br i1 %cmp45, label %for.inc.sink.split, label %for.inc

for.inc.sink.split:                               ; preds = %if.else, %for.body
  %.str.138.sink = phi ptr [ @.str.138, %for.body ], [ @.str.139, %if.else ]
  store i32 3, ptr %status42, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call2, ptr noundef nonnull %.str.138.sink, i32 noundef %and32)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else
  %sub = add nsw i32 %len.096, -4
  %cmp30 = icmp sgt i32 %len.096, 4
  br i1 %cmp30, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.end27, %do.end, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %unit_addr) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_spi_bus_bridge(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %0 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp153 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @.str.141, i64 3)
  %cmp4 = icmp eq i32 %bcmp153, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @spi_bus, ptr %bus, align 8, !tbaa !61
  br label %if.end59

if.else:                                          ; preds = %land.lhs.true, %entry
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %2 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp9.not158 = icmp eq i32 %2, 1
  br i1 %cmp9.not158, label %lor.lhs.false, label %cleanup110

lor.lhs.false:                                    ; preds = %if.else
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %3 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp18.not159 = icmp eq i32 %3, 0
  br i1 %cmp18.not159, label %if.end, label %cleanup110

if.end:                                           ; preds = %lor.lhs.false
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.0164 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not165 = icmp eq ptr %child.0164, null
  br i1 %tobool.not165, label %for.end44, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %bus34 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc43, %for.body.lr.ph
  %child.0166 = phi ptr [ %child.0164, %for.body.lr.ph ], [ %child.0, %for.inc43 ]
  %4 = load i8, ptr %child.0166, align 8, !tbaa !23, !range !14
  %tobool21.not = icmp eq i8 %4, 0
  br i1 %tobool21.not, label %if.then22, label %for.inc43

if.then22:                                        ; preds = %for.body
  %proplist = getelementptr inbounds %struct.node, ptr %child.0166, i64 0, i32 2
  %prop.0160 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool24.not161 = icmp eq ptr %prop.0160, null
  br i1 %tobool24.not161, label %for.end, label %for.body25

for.body25:                                       ; preds = %for.inc, %if.then22
  %prop.0162 = phi ptr [ %prop.0, %for.inc ], [ %prop.0160, %if.then22 ]
  %5 = load i8, ptr %prop.0162, align 8, !tbaa !36, !range !14
  %tobool27.not = icmp eq i8 %5, 0
  br i1 %tobool27.not, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body25
  %name29 = getelementptr inbounds %struct.property, ptr %prop.0162, i64 0, i32 1
  %6 = load ptr, ptr %name29, align 8, !tbaa !33
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %6, ptr noundef nonnull dereferenceable(4) @.str.142, i64 4)
  %cmp31 = icmp eq i32 %bcmp, 0
  br i1 %cmp31, label %for.end.thread, label %for.inc

for.end.thread:                                   ; preds = %if.then28
  store ptr @spi_bus, ptr %bus34, align 8, !tbaa !61
  br label %for.end44

for.inc:                                          ; preds = %if.then28, %for.body25
  %next = getelementptr inbounds %struct.property, ptr %prop.0162, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool24.not = icmp eq ptr %prop.0, null
  br i1 %tobool24.not, label %for.end, label %for.body25

for.end:                                          ; preds = %for.inc, %if.then22
  %.pr = load ptr, ptr %bus34, align 8, !tbaa !61
  %cmp38 = icmp eq ptr %.pr, @spi_bus
  br i1 %cmp38, label %for.end44, label %for.inc43

for.inc43:                                        ; preds = %for.end, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.0166, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end44, label %for.body

for.end44:                                        ; preds = %for.inc43, %for.end, %for.end.thread, %if.end
  %bus45 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  %7 = load ptr, ptr %bus45, align 8, !tbaa !61
  %cmp46 = icmp eq ptr %7, @spi_bus
  br i1 %cmp46, label %land.lhs.true48, label %if.end59

land.lhs.true48:                                  ; preds = %for.end44
  %call49 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end59, label %do.end

do.end:                                           ; preds = %land.lhs.true48
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.143)
  br label %if.end59

if.end59:                                         ; preds = %do.end, %land.lhs.true48, %for.end44, %if.then
  %bus60 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  %8 = load ptr, ptr %bus60, align 8, !tbaa !61
  %cmp61.not = icmp eq ptr %8, @spi_bus
  br i1 %cmp61.not, label %lor.lhs.false63, label %cleanup110

lor.lhs.false63:                                  ; preds = %if.end59
  %children64 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %9 = load ptr, ptr %children64, align 8, !tbaa !66
  %tobool65.not = icmp eq ptr %9, null
  br i1 %tobool65.not, label %cleanup110, label %if.end67

if.end67:                                         ; preds = %lor.lhs.false63
  %call68 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.144) #19
  %tobool69.not = icmp eq ptr %call68, null
  %spec.select156 = zext i1 %tobool69.not to i32
  %addr_cells72 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %10 = load i32, ptr %addr_cells72, align 8, !tbaa !59
  %cmp73 = icmp eq i32 %10, -1
  %cond79 = select i1 %cmp73, i32 2, i32 %10
  %cmp80.not = icmp eq i32 %cond79, %spec.select156
  br i1 %cmp80.not, label %if.end90, label %do.end86

do.end86:                                         ; preds = %if.end67
  %status87 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status87, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.145)
  br label %if.end90

if.end90:                                         ; preds = %do.end86, %if.end67
  %size_cells91 = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %11 = load i32, ptr %size_cells91, align 4, !tbaa !60
  %phi.cmp = icmp eq i32 %11, 0
  br i1 %phi.cmp, label %cleanup110, label %do.end105

do.end105:                                        ; preds = %if.end90
  %status106 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status106, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.146)
  br label %cleanup110

cleanup110:                                       ; preds = %do.end105, %if.end90, %lor.lhs.false63, %if.end59, %lor.lhs.false, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_spi_bus_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %unit_addr = alloca [9 x i8], align 1
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %unit_addr) #19
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @spi_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @get_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.144) #19
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

if.end11:                                         ; preds = %if.end6
  %val10 = getelementptr inbounds %struct.property, ptr %call7, i64 0, i32 2, i32 1
  %2 = load ptr, ptr %val10, align 8, !tbaa !42
  %tobool12.not = icmp eq ptr %2, null
  br i1 %tobool12.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11, %if.end6
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.136)
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %3 = load i32, ptr %2, align 4, !tbaa !18
  %rev.i = tail call i32 @llvm.bswap.i32(i32 %3) #19
  %call19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 9, ptr noundef nonnull @.str.118, i32 noundef %rev.i) #19
  %call21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call, ptr noundef nonnull %unit_addr) #17
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %cleanup, label %do.end27

do.end27:                                         ; preds = %if.end17
  %status28 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status28, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull %unit_addr)
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end17, %do.end, %if.end, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %unit_addr) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_avoid_default_addr_size(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %call1 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.87) #19
  %tobool2 = icmp ne ptr %call, null
  %tobool3 = icmp ne ptr %call1, null
  %or.cond = select i1 %tobool2, i1 true, i1 %tobool3
  br i1 %or.cond, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = load ptr, ptr %parent, align 8, !tbaa !43
  %addr_cells = getelementptr inbounds %struct.node, ptr %1, i64 0, i32 9
  %2 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end5
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.151)
  %.pre = load ptr, ptr %parent, align 8, !tbaa !43
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end5
  %3 = phi ptr [ %.pre, %do.end ], [ %1, %if.end5 ]
  %size_cells = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 10
  %4 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp13 = icmp eq i32 %4, -1
  br i1 %cmp13, label %do.end18, label %cleanup

do.end18:                                         ; preds = %if.end11
  %status19 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status19, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.152)
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end11, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_avoid_unnecessary_addr_size(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %1 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %2 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false1
  %call = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.87) #19
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %lor.lhs.false4, label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %3 = load ptr, ptr %children, align 8, !tbaa !66
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %lor.lhs.false4
  %has_reg.037 = phi i8 [ %has_reg.1, %for.inc ], [ 0, %lor.lhs.false4 ]
  %child.036 = phi ptr [ %5, %for.inc ], [ %3, %lor.lhs.false4 ]
  %4 = load i8, ptr %child.036, align 8, !tbaa !23, !range !14
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %call12 = tail call ptr @get_property(ptr noundef nonnull %child.036, ptr noundef nonnull @.str.82) #19
  %tobool13.not = icmp eq ptr %call12, null
  %spec.select = select i1 %tobool13.not, i8 %has_reg.037, i8 1
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body
  %has_reg.1 = phi i8 [ %has_reg.037, %for.body ], [ %spec.select, %if.then11 ]
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.036, i64 0, i32 5
  %5 = load ptr, ptr %next_sibling, align 8, !tbaa !25
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %6 = and i8 %has_reg.1, 1
  %tobool17.not = icmp eq i8 %6, 0
  br i1 %tobool17.not, label %do.end, label %cleanup

do.end:                                           ; preds = %for.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.154)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end, %lor.lhs.false4, %if.end, %lor.lhs.false1, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unique_unit_address(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node) #0 {
entry:
  tail call fastcc void @check_unique_unit_address_common(ptr noundef %c, ptr noundef %dti, ptr noundef %node, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_unique_unit_address_common(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node, i1 noundef zeroext %disable_check) unnamed_addr #0 {
entry:
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %0 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %size_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 10
  %1 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %cleanup48, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %2 = load ptr, ptr %children, align 8, !tbaa !66
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %cleanup48, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc45, %for.body.lr.ph
  %childa.090 = phi ptr [ %2, %for.body.lr.ph ], [ %8, %for.inc45 ]
  %3 = load i8, ptr %childa.090, align 8, !tbaa !23, !range !14
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then7, label %for.inc45

if.then7:                                         ; preds = %for.body
  %call = tail call ptr @get_unitname(ptr noundef nonnull %childa.090) #19
  %char0 = load i8, ptr %call, align 1
  %tobool9.not = icmp eq i8 %char0, 0
  br i1 %tobool9.not, label %for.inc45, label %if.end11

if.end11:                                         ; preds = %if.then7
  br i1 %disable_check, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %call.i = tail call ptr @get_property(ptr noundef nonnull %childa.090, ptr noundef nonnull @.str.67) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end15, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %val1.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %val1.i, align 8, !tbaa !42
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.157, ptr noundef nonnull dereferenceable(1) %4) #17
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %for.inc45, label %if.end15

if.end15:                                         ; preds = %if.then.i, %land.lhs.true, %if.end11
  %childb.084 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool18.not85 = icmp eq ptr %childb.084, null
  br i1 %tobool18.not85, label %for.inc45, label %for.body19.lr.ph

for.body19.lr.ph:                                 ; preds = %if.end15
  %fullpath = getelementptr inbounds %struct.node, ptr %childa.090, i64 0, i32 6
  br label %for.body19

for.body19:                                       ; preds = %for.inc, %for.body19.lr.ph
  %childb.086 = phi ptr [ %childb.084, %for.body19.lr.ph ], [ %childb.0, %for.inc ]
  %5 = load i8, ptr %childb.086, align 8, !tbaa !23, !range !14
  %tobool21.not = icmp eq i8 %5, 0
  br i1 %tobool21.not, label %if.then22, label %for.inc

if.then22:                                        ; preds = %for.body19
  %call23 = tail call ptr @get_unitname(ptr noundef nonnull %childb.086) #19
  %cmp24 = icmp eq ptr %childa.090, %childb.086
  br i1 %cmp24, label %for.inc45, label %if.end26

if.end26:                                         ; preds = %if.then22
  br i1 %disable_check, label %land.lhs.true28, label %if.end31

land.lhs.true28:                                  ; preds = %if.end26
  %call.i70 = tail call ptr @get_property(ptr noundef nonnull %childb.086, ptr noundef nonnull @.str.67) #19
  %tobool.not.i71 = icmp eq ptr %call.i70, null
  br i1 %tobool.not.i71, label %if.end31, label %if.then.i75

if.then.i75:                                      ; preds = %land.lhs.true28
  %val1.i72 = getelementptr inbounds %struct.property, ptr %call.i70, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %val1.i72, align 8, !tbaa !42
  %call2.i73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.157, ptr noundef nonnull dereferenceable(1) %6) #17
  %cmp.i74 = icmp eq i32 %call2.i73, 0
  br i1 %cmp.i74, label %for.inc, label %if.end31

if.end31:                                         ; preds = %if.then.i75, %land.lhs.true28, %if.end26
  %call32 = tail call i32 @strcmp(ptr noundef nonnull %call, ptr noundef nonnull dereferenceable(1) %call23) #17
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end31
  store i32 3, ptr %status, align 4, !tbaa !22
  %7 = load ptr, ptr %fullpath, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %childb.086, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end31, %if.then.i75, %for.body19
  %next_sibling = getelementptr inbounds %struct.node, ptr %childb.086, i64 0, i32 5
  %childb.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool18.not = icmp eq ptr %childb.0, null
  br i1 %tobool18.not, label %for.inc45, label %for.body19

for.inc45:                                        ; preds = %for.inc, %if.then22, %if.end15, %if.then.i, %if.then7, %for.body
  %next_sibling46 = getelementptr inbounds %struct.node, ptr %childa.090, i64 0, i32 5
  %8 = load ptr, ptr %next_sibling46, align 8, !tbaa !25
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %cleanup48, label %for.body

cleanup48:                                        ; preds = %for.inc45, %if.end, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unique_unit_address_if_enabled(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr nocapture noundef readonly %node) #0 {
entry:
  tail call fastcc void @check_unique_unit_address_common(ptr noundef %c, ptr noundef %dti, ptr noundef %node, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_obsolete_chosen_interrupt_controller(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %dt1 = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt1, align 8, !tbaa !19
  %cmp.not = icmp eq ptr %0, %node
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @get_node_by_path(ptr noundef %node, ptr noundef nonnull @.str.160) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @get_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.161) #19
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end3
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef nonnull %call4, ptr noundef nonnull @.str.162)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3, %if.end, %entry
  ret void
}

declare ptr @get_node_by_path(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_is_root(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %1 = load ptr, ptr %parent, align 8, !tbaa !43
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %2 = load ptr, ptr %dt, align 8, !tbaa !19
  %cmp1.not = icmp eq ptr %1, %2
  br i1 %cmp1.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.165)
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_bootargs(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.167) #19
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %name4 = getelementptr inbounds %struct.property, ptr %call1, i64 0, i32 1
  %1 = load ptr, ptr %name4, align 8, !tbaa !33
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  store ptr %1, ptr %data, align 8, !tbaa !38
  %call.i = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef %1) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.end3
  %val.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2
  %call1.i = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %val.i) #19
  br i1 %call1.i, label %cleanup, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %status.i = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status.i, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.29) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i, %if.end3, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_stdout_path(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.169) #19
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.170) #19
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.then2
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call3, ptr noundef nonnull @.str.171)
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end
  %prop.0 = phi ptr [ %call1, %if.end ], [ %call3, %do.end ]
  %name11 = getelementptr inbounds %struct.property, ptr %prop.0, i64 0, i32 1
  %1 = load ptr, ptr %name11, align 8, !tbaa !33
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  store ptr %1, ptr %data, align 8, !tbaa !38
  %call.i = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef %1) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.end10
  %val.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 2
  %call1.i = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %val.i) #19
  br i1 %call1.i, label %cleanup, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  %status.i = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status.i, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.29) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i, %if.end10, %if.then2, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_provider_cells_property(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %data = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 2
  %0 = load ptr, ptr %data, align 8, !tbaa !38
  %1 = load ptr, ptr %0, align 8, !tbaa !67
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef %1) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @check_property_phandle_args(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_property_phandle_args(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node, ptr noundef %prop, ptr nocapture noundef readonly %provider) unnamed_addr #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !19
  %val = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %2 = and i32 %1, 3
  %retval.0.i = icmp eq i32 %2, 0
  br i1 %retval.0.i, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %cmp170.not = icmp ult i32 %1, 4
  br i1 %cmp170.not, label %cleanup98, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %markers = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 2, i32 2
  %status40 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  %cell_name = getelementptr inbounds %struct.provider, ptr %provider, i64 0, i32 1
  %optional = getelementptr inbounds %struct.provider, ptr %provider, i64 0, i32 2
  br label %for.body

do.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef nonnull %prop, ptr noundef nonnull @.str.173, i32 noundef %1, i64 noundef 4)
  br label %cleanup98

for.body:                                         ; preds = %for.inc94, %for.body.lr.ph
  %conv175 = phi i64 [ 0, %for.body.lr.ph ], [ %conv.pre-phi, %for.inc94 ]
  %cell.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %add96.pre-phi, %for.inc94 ]
  %call10 = tail call i32 @propval_cell_n(ptr noundef nonnull %prop, i32 noundef %cell.0172) #19
  %3 = add i32 %call10, -1
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %if.end15, label %cleanup

if.end15:                                         ; preds = %for.body
  %5 = load ptr, ptr %markers, align 8, !tbaa !47
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %if.end44, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.end15
  %mul = shl nuw nsw i64 %conv175, 2
  br label %for.body23

for.body23:                                       ; preds = %for.inc, %for.cond21.preheader
  %m.0168 = phi ptr [ %5, %for.cond21.preheader ], [ %8, %for.inc ]
  %6 = load i32, ptr %m.0168, align 8, !tbaa !48
  %cmp24 = icmp eq i32 %6, 1
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body23
  %offset = getelementptr inbounds %struct.marker, ptr %m.0168, i64 0, i32 1
  %7 = load i32, ptr %offset, align 4, !tbaa !53
  %conv27 = zext i32 %7 to i64
  %cmp29 = icmp eq i64 %mul, %conv27
  br i1 %cmp29, label %if.end44, label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body23
  %next = getelementptr inbounds %struct.marker, ptr %m.0168, i64 0, i32 3
  %8 = load ptr, ptr %next, align 8, !tbaa !51
  %tobool22.not = icmp eq ptr %8, null
  br i1 %tobool22.not, label %for.cond21.do.end39.critedge_crit_edge, label %for.body23

for.cond21.do.end39.critedge_crit_edge:           ; preds = %for.inc
  store i32 3, ptr %status40, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef %prop, ptr noundef nonnull @.str.174, i32 noundef %cell.0172)
  br label %if.end44

if.end44:                                         ; preds = %for.cond21.do.end39.critedge_crit_edge, %if.then26, %if.end15
  %call45 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %call10) #19
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end44
  store i32 3, ptr %status40, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef %prop, ptr noundef nonnull @.str.175, i32 noundef %cell.0172)
  br label %cleanup98

if.end55:                                         ; preds = %if.end44
  %9 = load ptr, ptr %cell_name, align 8, !tbaa !69
  %call56 = tail call ptr @get_property(ptr noundef nonnull %call45, ptr noundef %9) #19
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  %call59 = tail call i32 @propval_cell(ptr noundef nonnull %call56) #19
  br label %if.end72

if.else:                                          ; preds = %if.end55
  %10 = load i8, ptr %optional, align 8, !tbaa !70, !range !14
  %tobool60.not = icmp eq i8 %10, 0
  br i1 %tobool60.not, label %do.end66, label %if.end72

do.end66:                                         ; preds = %if.else
  store i32 3, ptr %status40, align 4, !tbaa !22
  %11 = load ptr, ptr %cell_name, align 8, !tbaa !69
  %fullpath = getelementptr inbounds %struct.node, ptr %call45, i64 0, i32 6
  %12 = load ptr, ptr %fullpath, align 8, !tbaa !32
  %name = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 1
  %13 = load ptr, ptr %name, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %cell.0172)
  br label %cleanup98

if.end72:                                         ; preds = %if.else, %if.then58
  %cellsize.1 = phi i32 [ %call59, %if.then58 ], [ 0, %if.else ]
  %14 = load i32, ptr %val, align 8, !tbaa !40
  %conv75 = zext i32 %14 to i64
  %add = add i32 %cell.0172, 1
  %add76 = add i32 %add, %cellsize.1
  %conv77 = zext i32 %add76 to i64
  %mul78 = shl nuw nsw i64 %conv77, 2
  %cmp79 = icmp ugt i64 %mul78, %conv75
  br i1 %cmp79, label %do.end85, label %for.inc94

do.end85:                                         ; preds = %if.end72
  store i32 3, ptr %status40, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop, ptr noundef nonnull @.str.177, i32 noundef %14, i32 noundef %cellsize.1)
  br label %for.inc94

cleanup:                                          ; preds = %for.body
  %15 = load i32, ptr %dti, align 8, !tbaa !54
  %and = and i32 %15, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.for.inc94_crit_edge, label %cleanup98

cleanup.for.inc94_crit_edge:                      ; preds = %cleanup
  %.pre = add nuw i32 %cell.0172, 1
  %.pre180 = zext i32 %.pre to i64
  br label %for.inc94

for.inc94:                                        ; preds = %cleanup.for.inc94_crit_edge, %do.end85, %if.end72
  %conv.pre-phi = phi i64 [ %.pre180, %cleanup.for.inc94_crit_edge ], [ %conv77, %if.end72 ], [ %conv77, %do.end85 ]
  %add96.pre-phi = phi i32 [ %.pre, %cleanup.for.inc94_crit_edge ], [ %add76, %if.end72 ], [ %add76, %do.end85 ]
  %16 = load i32, ptr %val, align 8, !tbaa !40
  %17 = lshr i32 %16, 2
  %cmp = icmp ult i32 %add96.pre-phi, %17
  br i1 %cmp, label %for.body, label %cleanup98

cleanup98:                                        ; preds = %for.inc94, %cleanup, %do.end66, %do.end51, %do.end, %for.cond.preheader
  ret void
}

declare i32 @propval_cell_n(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_deprecated_gpio_property(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.018 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not19 = icmp eq ptr %prop.018, null
  br i1 %tobool.not19, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.020 = phi ptr [ %prop.018, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %0 = load i8, ptr %prop.020, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call fastcc zeroext i1 @prop_is_gpio(ptr noundef nonnull %prop.020)
  br i1 %call, label %if.end, label %for.inc

if.end:                                           ; preds = %if.then
  %name = getelementptr inbounds %struct.property, ptr %prop.020, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !33
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %2 = and i64 %call.i, 4294967292
  %cmp.i = icmp eq i64 %2, 0
  br i1 %cmp.i, label %for.inc, label %strends.exit

strends.exit:                                     ; preds = %if.end
  %idx.ext.i = and i64 %call.i, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %1, i64 -4
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext.i
  %call6.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5.i, ptr noundef nonnull dereferenceable(5) @.str.242) #17
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end, label %for.inc

do.end:                                           ; preds = %strends.exit
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.020, ptr noundef nonnull @.str.243)
  br label %for.inc

for.inc:                                          ; preds = %do.end, %strends.exit, %if.end, %if.then, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.020, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc zeroext i1 @prop_is_gpio(ptr nocapture noundef readonly %prop) unnamed_addr #13 {
entry:
  %name = getelementptr inbounds %struct.property, ptr %prop, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !33
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %conv.i = trunc i64 %call.i to i32
  %cmp.i = icmp ult i32 %conv.i, 9
  br i1 %cmp.i, label %if.end, label %strends.exit

strends.exit:                                     ; preds = %entry
  %idx.ext.i = and i64 %call.i, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 %idx.ext.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 -9
  %call6.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5.i, ptr noundef nonnull dereferenceable(10) @.str.244) #17
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %return, label %strends.exit29

if.end:                                           ; preds = %entry
  %cmp.i19 = icmp ult i32 %conv.i, 6
  br i1 %cmp.i19, label %lor.lhs.false, label %strends.exit29

strends.exit29:                                   ; preds = %if.end, %strends.exit
  %idx.ext.i20 = and i64 %call.i, 4294967295
  %add.ptr.i21 = getelementptr inbounds i8, ptr %0, i64 %idx.ext.i20
  %add.ptr5.i24 = getelementptr inbounds i8, ptr %add.ptr.i21, i64 -6
  %call6.i25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5.i24, ptr noundef nonnull dereferenceable(7) @.str.245) #17
  %cmp7.i26 = icmp eq i32 %call6.i25, 0
  br i1 %cmp7.i26, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %strends.exit29, %if.end
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.246) #17
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %return, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp.i34 = icmp ult i32 %conv.i, 5
  br i1 %cmp.i34, label %lor.rhs, label %strends.exit44

strends.exit44:                                   ; preds = %lor.lhs.false5
  %idx.ext.i35 = and i64 %call.i, 4294967295
  %add.ptr.i36 = getelementptr inbounds i8, ptr %0, i64 %idx.ext.i35
  %add.ptr5.i39 = getelementptr inbounds i8, ptr %add.ptr.i36, i64 -5
  %call6.i40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr5.i39, ptr noundef nonnull dereferenceable(6) @.str.247) #17
  %cmp7.i41 = icmp eq i32 %call6.i40, 0
  br i1 %cmp7.i41, label %return, label %lor.rhs

lor.rhs:                                          ; preds = %strends.exit44, %lor.lhs.false5
  %call9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.242) #17
  %cmp10 = icmp eq i32 %call9, 0
  br label %return

return:                                           ; preds = %lor.rhs, %strends.exit44, %lor.lhs.false, %strends.exit29, %strends.exit
  %retval.0 = phi i1 [ false, %strends.exit ], [ true, %strends.exit44 ], [ true, %lor.lhs.false ], [ true, %strends.exit29 ], [ %cmp10, %lor.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @check_gpios_property(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %provider = alloca %struct.provider, align 8
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.249) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %cleanup8

if.end:                                           ; preds = %entry
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.018 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool1.not19 = icmp eq ptr %prop.018, null
  br i1 %tobool1.not19, label %cleanup8, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %cell_name = getelementptr inbounds %struct.provider, ptr %provider, i64 0, i32 1
  %optional = getelementptr inbounds %struct.provider, ptr %provider, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.020 = phi ptr [ %prop.018, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %0 = load i8, ptr %prop.020, align 8, !tbaa !36, !range !14
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %provider) #19
  %call4 = tail call fastcc zeroext i1 @prop_is_gpio(ptr noundef nonnull %prop.020)
  br i1 %call4, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.then3
  %name = getelementptr inbounds %struct.property, ptr %prop.020, i64 0, i32 1
  %1 = load ptr, ptr %name, align 8, !tbaa !33
  store ptr %1, ptr %provider, align 8, !tbaa !67
  store ptr @.str.250, ptr %cell_name, align 8, !tbaa !69
  store i8 0, ptr %optional, align 8, !tbaa !70
  call fastcc void @check_property_phandle_args(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.020, ptr noundef nonnull %provider)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %provider) #19
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.020, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool1.not = icmp eq ptr %prop.0, null
  br i1 %tobool1.not, label %cleanup8, label %for.body

cleanup8:                                         ; preds = %for.inc, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupts_property(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !19
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.252) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %2 = and i32 %1, 3
  %retval.0.i = icmp eq i32 %2, 0
  br i1 %retval.0.i, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.253, i32 noundef %1, i64 noundef 4)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  %tobool9162.not = icmp eq ptr %node, null
  br i1 %tobool9162.not, label %do.end59, label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %if.end8
  %status27 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end52, %while.body.lr.ph.lr.ph
  %parent.0.ph163 = phi ptr [ %node, %while.body.lr.ph.lr.ph ], [ %6, %if.end52 ]
  %cmp.not = icmp eq ptr %parent.0.ph163, %node
  br i1 %cmp.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body.lr.ph
  %call.i = tail call ptr @get_property(ptr noundef nonnull %parent.0.ph163, ptr noundef nonnull @.str.161) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %node_is_interrupt_provider.exit, label %if.end63

node_is_interrupt_provider.exit:                  ; preds = %land.lhs.true
  %call1.i = tail call ptr @get_property(ptr noundef nonnull %parent.0.ph163, ptr noundef nonnull @.str.260) #19
  %tobool2.not.i.not = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i.not, label %if.end13, label %if.end63

if.end13:                                         ; preds = %node_is_interrupt_provider.exit, %while.body.lr.ph
  %call14 = tail call ptr @get_property(ptr noundef nonnull %parent.0.ph163, ptr noundef nonnull @.str.254) #19
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end52, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @propval_cell(ptr noundef nonnull %call14) #19
  %3 = add i32 %call17, -1
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %if.end30, label %if.then19

if.then19:                                        ; preds = %if.then16
  %5 = load i32, ptr %dti, align 8, !tbaa !54
  %and = and i32 %5, 2
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.end26, label %cleanup

do.end26:                                         ; preds = %if.then19
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %parent.0.ph163, ptr noundef nonnull %call14, ptr noundef nonnull @.str.255)
  br label %do.end59

if.end30:                                         ; preds = %if.then16
  %call31 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %call17) #19
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end30
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %parent.0.ph163, ptr noundef nonnull %call14, ptr noundef nonnull @.str.256)
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %call.i142 = tail call ptr @get_property(ptr noundef nonnull %call31, ptr noundef nonnull @.str.161) #19
  %tobool.not.i143 = icmp eq ptr %call.i142, null
  br i1 %tobool.not.i143, label %node_is_interrupt_provider.exit148, label %if.end63

node_is_interrupt_provider.exit148:               ; preds = %if.end41
  %call1.i144 = tail call ptr @get_property(ptr noundef nonnull %call31, ptr noundef nonnull @.str.260) #19
  %tobool2.not.i145.not = icmp eq ptr %call1.i144, null
  br i1 %tobool2.not.i145.not, label %do.end47, label %if.end63

do.end47:                                         ; preds = %node_is_interrupt_provider.exit148
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %call31, ptr noundef null, ptr noundef nonnull @.str.257)
  br label %if.end63

if.end52:                                         ; preds = %if.end13
  %parent53 = getelementptr inbounds %struct.node, ptr %parent.0.ph163, i64 0, i32 4
  %6 = load ptr, ptr %parent53, align 8, !tbaa !43
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.end59, label %while.body.lr.ph

do.end59:                                         ; preds = %if.end52, %do.end26, %if.end8
  %status60 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status60, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.258)
  br label %cleanup

if.end63:                                         ; preds = %do.end47, %node_is_interrupt_provider.exit148, %if.end41, %node_is_interrupt_provider.exit, %land.lhs.true
  %irq_node.0.ph = phi ptr [ %call31, %do.end47 ], [ %call31, %node_is_interrupt_provider.exit148 ], [ %call31, %if.end41 ], [ %parent.0.ph163, %node_is_interrupt_provider.exit ], [ %parent.0.ph163, %land.lhs.true ]
  %call64 = tail call ptr @get_property(ptr noundef nonnull %irq_node.0.ph, ptr noundef nonnull @.str.195) #19
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %if.end63
  %call68 = tail call i32 @propval_cell(ptr noundef nonnull %call64) #19
  %7 = load i32, ptr %val, align 8, !tbaa !40
  %mul = shl i32 %call68, 2
  %cmp.i = icmp eq i32 %mul, 0
  br i1 %cmp.i, label %is_multiple_of.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end67
  %rem.i149 = srem i32 %7, %mul
  br label %is_multiple_of.exit

is_multiple_of.exit:                              ; preds = %if.else.i, %if.end67
  %retval.0.in.i = phi i32 [ %rem.i149, %if.else.i ], [ %7, %if.end67 ]
  %retval.0.i150 = icmp eq i32 %retval.0.in.i, 0
  br i1 %retval.0.i150, label %cleanup, label %do.end77

do.end77:                                         ; preds = %is_multiple_of.exit
  store i32 3, ptr %status27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef nonnull %call64, ptr noundef nonnull @.str.259, i32 noundef %7, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %is_multiple_of.exit, %if.end63, %do.end59, %do.end37, %if.then19, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupt_provider(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %call.i = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.161) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %node_is_interrupt_provider.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.260) #19
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br label %node_is_interrupt_provider.exit

node_is_interrupt_provider.exit:                  ; preds = %if.end.i, %entry
  %retval.0.i = phi i1 [ false, %entry ], [ %tobool2.not.i, %if.end.i ]
  %call1 = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.195) #19
  %tobool2 = icmp ne ptr %call1, null
  %or.cond = select i1 %retval.0.i, i1 true, i1 %tobool2
  br i1 %or.cond, label %if.end, label %cleanup.sink.split

if.end:                                           ; preds = %node_is_interrupt_provider.exit
  %or.cond19 = select i1 %retval.0.i, i1 %tobool2, i1 false
  br i1 %or.cond19, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %node_is_interrupt_provider.exit
  %.str.263.sink = phi ptr [ @.str.262, %node_is_interrupt_provider.exit ], [ @.str.263, %if.end ]
  %status14 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status14, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull %.str.263.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupt_map(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %0 = load ptr, ptr %dt, align 8, !tbaa !19
  %call = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.260) #19
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup116, label %if.end

if.end:                                           ; preds = %entry
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %1 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.end, label %cond.end

do.end:                                           ; preds = %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.265)
  br label %cleanup116

cond.end:                                         ; preds = %if.end
  %conv196 = zext i32 %1 to i64
  %call9 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.195) #19
  %call10 = tail call i32 @propval_cell(ptr noundef %call9) #19
  %conv11 = zext i32 %call10 to i64
  %add = add nuw nsw i64 %conv11, %conv196
  %call12 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.266) #19
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end28, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %val = getelementptr inbounds %struct.property, ptr %call12, i64 0, i32 2
  %2 = load i32, ptr %val, align 8, !tbaa !40
  %conv14 = zext i32 %2 to i64
  %mul = shl nuw nsw i64 %add, 2
  %cmp15.not = icmp eq i64 %mul, %conv14
  br i1 %cmp15.not, label %if.end28, label %do.end21

do.end21:                                         ; preds = %land.lhs.true
  %status22 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status22, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef nonnull %call12, ptr noundef nonnull @.str.267, i32 noundef %2, i64 noundef %mul)
  br label %if.end28

if.end28:                                         ; preds = %do.end21, %land.lhs.true, %cond.end
  %val29 = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 2
  %3 = load i32, ptr %val29, align 8, !tbaa !40
  %4 = and i32 %3, 3
  %retval.0.i = icmp eq i32 %4, 0
  br i1 %retval.0.i, label %if.end42, label %do.end36

do.end36:                                         ; preds = %if.end28
  %status37 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status37, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.173, i32 noundef %3, i64 noundef 4)
  br label %cleanup116

if.end42:                                         ; preds = %if.end28
  %5 = lshr i32 %3, 2
  %div = zext i32 %5 to i64
  %cmp46203.not = icmp ult i32 %3, 4
  br i1 %cmp46203.not, label %cleanup116, label %for.body

for.body:                                         ; preds = %cleanup, %if.end42
  %cell.0204 = phi i64 [ %add112, %cleanup ], [ 0, %if.end42 ]
  %add48 = add i64 %cell.0204, %add
  %cmp49.not = icmp ult i64 %add48, %div
  br i1 %cmp49.not, label %if.end63, label %do.end55

do.end55:                                         ; preds = %for.body
  %status56 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status56, align 4, !tbaa !22
  %6 = load i32, ptr %val29, align 8, !tbaa !40
  %mul60 = shl i64 %add48, 2
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.268, i32 noundef %6, i64 noundef %mul60)
  br label %cleanup116

if.end63:                                         ; preds = %for.body
  %conv65 = trunc i64 %add48 to i32
  %call66 = tail call i32 @propval_cell_n(ptr noundef nonnull %call, i32 noundef %conv65) #19
  %7 = add i32 %call66, -1
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.end79, label %if.then68

if.then68:                                        ; preds = %if.end63
  %9 = load i32, ptr %dti, align 8, !tbaa !54
  %and = and i32 %9, 2
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %do.end74, label %cleanup116

do.end74:                                         ; preds = %if.then68
  %status75 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status75, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.269, i64 noundef %add48, i32 noundef %call66)
  br label %cleanup116

if.end79:                                         ; preds = %if.end63
  %call80 = tail call ptr @get_node_by_phandle(ptr noundef %0, i32 noundef %call66) #19
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end86, label %if.end90

do.end86:                                         ; preds = %if.end79
  %status87 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status87, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %call, ptr noundef nonnull @.str.270, i32 noundef %call66, i64 noundef %add48)
  br label %cleanup116

if.end90:                                         ; preds = %if.end79
  %call91 = tail call ptr @get_property(ptr noundef nonnull %call80, ptr noundef nonnull @.str.195) #19
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %do.end99, label %if.then93

if.then93:                                        ; preds = %if.end90
  %call94 = tail call i32 @propval_cell(ptr noundef nonnull %call91) #19
  %conv95 = zext i32 %call94 to i64
  %call104 = tail call ptr @get_property(ptr noundef nonnull %call80, ptr noundef nonnull @.str.58) #19
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %cleanup, label %if.then106

do.end99:                                         ; preds = %if.end90
  %status100 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status100, align 4, !tbaa !22
  %fullpath = getelementptr inbounds %struct.node, ptr %call80, i64 0, i32 6
  %10 = load ptr, ptr %fullpath, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.271, ptr noundef %10, i64 noundef %add48)
  br label %cleanup116

if.then106:                                       ; preds = %if.then93
  %call107 = tail call i32 @propval_cell(ptr noundef nonnull %call104) #19
  %conv108 = zext i32 %call107 to i64
  %add109 = add nuw nsw i64 %conv108, %conv95
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %if.then93
  %parent_cellsize.0 = phi i64 [ %add109, %if.then106 ], [ %conv95, %if.then93 ]
  %add111 = add nuw i64 %add48, 1
  %add112 = add i64 %add111, %parent_cellsize.0
  %cmp46 = icmp ult i64 %add112, %div
  br i1 %cmp46, label %for.body, label %cleanup116

cleanup116:                                       ; preds = %cleanup, %do.end99, %do.end86, %do.end74, %if.then68, %do.end55, %if.end42, %do.end36, %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_alias_paths(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !26
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.273) #17
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %proplist = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 2
  %prop.058 = load ptr, ptr %proplist, align 8, !tbaa !5
  %tobool.not59 = icmp eq ptr %prop.058, null
  br i1 %tobool.not59, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %status35 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %prop.060 = phi ptr [ %prop.058, %for.body.lr.ph ], [ %prop.0, %for.inc ]
  %1 = load i8, ptr %prop.060, align 8, !tbaa !36, !range !14
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then2, label %for.inc

if.then2:                                         ; preds = %for.body
  %name3 = getelementptr inbounds %struct.property, ptr %prop.060, i64 0, i32 1
  %2 = load ptr, ptr %name3, align 8, !tbaa !33
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(8) @.str.43) #17
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(14) @.str.44) #17
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %for.inc, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  %val11 = getelementptr inbounds %struct.property, ptr %prop.060, i64 0, i32 2, i32 1
  %3 = load ptr, ptr %val11, align 8, !tbaa !42
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %do.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end10
  %4 = load ptr, ptr %dt, align 8, !tbaa !19
  %call16 = tail call ptr @get_node_by_path(ptr noundef %4, ptr noundef nonnull %3) #19
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %lor.lhs.false13.do.end_crit_edge, label %if.end24

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  %.pre = load ptr, ptr %val11, align 8, !tbaa !42
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false13.do.end_crit_edge, %if.end10
  %5 = phi ptr [ %.pre, %lor.lhs.false13.do.end_crit_edge ], [ null, %if.end10 ]
  store i32 3, ptr %status35, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef nonnull %prop.060, ptr noundef nonnull @.str.274, ptr noundef %5)
  br label %for.inc

if.end24:                                         ; preds = %lor.lhs.false13
  %6 = load ptr, ptr %name3, align 8, !tbaa !33
  %call26 = tail call i64 @strspn(ptr noundef %6, ptr noundef nonnull @.str.275) #17
  %call28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #17
  %cmp29.not = icmp eq i64 %call26, %call28
  br i1 %cmp29.not, label %for.inc, label %do.end34

do.end34:                                         ; preds = %if.end24
  store i32 3, ptr %status35, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.276)
  br label %for.inc

for.inc:                                          ; preds = %do.end34, %if.end24, %do.end, %lor.lhs.false, %if.then2, %for.body
  %next = getelementptr inbounds %struct.property, ptr %prop.060, i64 0, i32 3
  %prop.0 = load ptr, ptr %next, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %prop.0, null
  br i1 %tobool.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_nodes(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %dti, ptr noundef %node) #0 {
entry:
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.037 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not38 = icmp eq ptr %child.037, null
  br i1 %tobool.not38, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %child.039 = phi ptr [ %child.0, %for.inc ], [ %child.037, %entry ]
  %0 = load i8, ptr %child.039, align 8, !tbaa !23, !range !14
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %basenamelen = getelementptr inbounds %struct.node, ptr %child.039, i64 0, i32 7
  %1 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %name = getelementptr inbounds %struct.node, ptr %child.039, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) @.str.278, i64 8)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %call7 = tail call ptr @get_property(ptr noundef nonnull %child.039, ptr noundef nonnull @.str.279) #19
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  store ptr @graph_port_bus, ptr %bus, align 8, !tbaa !61
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %3 = load ptr, ptr %parent, align 8, !tbaa !43
  %bus10 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 12
  %4 = load ptr, ptr %bus10, align 8, !tbaa !61
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %land.lhs.true12, label %for.end

land.lhs.true12:                                  ; preds = %if.end
  %name14 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %name14, align 8, !tbaa !26
  %call15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(6) @.str.280) #17
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true12
  %call19 = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.82) #19
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %for.end, label %lor.lhs.false18.if.then21_crit_edge

lor.lhs.false18.if.then21_crit_edge:              ; preds = %lor.lhs.false18
  %.pre = load ptr, ptr %parent, align 8, !tbaa !43
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false18.if.then21_crit_edge, %land.lhs.true12
  %6 = phi ptr [ %.pre, %lor.lhs.false18.if.then21_crit_edge ], [ %3, %land.lhs.true12 ]
  %bus23 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 12
  store ptr @graph_ports_bus, ptr %bus23, align 8, !tbaa !61
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.039, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then21, %lor.lhs.false18, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_child_address(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  %0 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %0, @graph_ports_bus
  %cmp2.not = icmp eq ptr %0, @graph_port_bus
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %cleanup21

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.039 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool.not40 = icmp eq ptr %child.039, null
  br i1 %tobool.not40, label %cleanup21, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %child.042 = phi ptr [ %child.0, %for.inc ], [ %child.039, %if.end ]
  %cnt.041 = phi i32 [ %cnt.2, %for.inc ], [ 0, %if.end ]
  %1 = load i8, ptr %child.042, align 8, !tbaa !23, !range !14
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  %call = tail call ptr @get_property(ptr noundef nonnull %child.042, ptr noundef nonnull @.str.82) #19
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %cleanup.thread, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.then4
  %call7 = tail call i32 @propval_cell(ptr noundef nonnull %call) #19
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %cleanup.thread, label %cleanup21

cleanup.thread:                                   ; preds = %land.lhs.true6, %if.then4
  %inc = add nsw i32 %cnt.041, 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %for.body
  %cnt.2 = phi i32 [ %cnt.041, %for.body ], [ %inc, %cleanup.thread ]
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.042, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp12 = icmp eq i32 %cnt.2, 1
  br i1 %cmp12, label %land.lhs.true13, label %cleanup21

land.lhs.true13:                                  ; preds = %for.end
  %addr_cells = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 9
  %2 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp14.not = icmp eq i32 %2, -1
  br i1 %cmp14.not, label %cleanup21, label %do.end

do.end:                                           ; preds = %land.lhs.true13
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  %3 = load ptr, ptr %children, align 8, !tbaa !66
  %name = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %name, align 8, !tbaa !26
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.284, ptr noundef %4)
  br label %cleanup21

cleanup21:                                        ; preds = %do.end, %land.lhs.true13, %for.end, %land.lhs.true6, %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_port(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %bus = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 12
  %0 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %0, @graph_port_bus
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %1 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %2 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %2, ptr noundef nonnull dereferenceable(4) @.str.286, i64 4)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %if.end10, label %do.end

do.end:                                           ; preds = %land.lhs.true, %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.287)
  br label %if.end10

if.end10:                                         ; preds = %do.end, %land.lhs.true
  tail call fastcc void @check_graph_reg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node)
  br label %return

return:                                           ; preds = %if.end10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_graph_reg(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) unnamed_addr #0 {
entry:
  %unit_addr = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %unit_addr) #19
  %call = tail call ptr @get_unitname(ptr noundef %node) #19
  %call1 = tail call ptr @get_property(ptr noundef %node, ptr noundef nonnull @.str.82) #19
  %tobool = icmp ne ptr %call1, null
  %tobool2 = icmp ne ptr %call, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.property, ptr %call1, i64 0, i32 2, i32 1
  %0 = load ptr, ptr %val3, align 8, !tbaa !42
  %tobool4.not = icmp eq ptr %0, null
  br i1 %tobool4.not, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %val = getelementptr inbounds %struct.property, ptr %call1, i64 0, i32 2
  %1 = load i32, ptr %val, align 8, !tbaa !40
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.end11, label %do.end

do.end:                                           ; preds = %land.lhs.true, %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.288)
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true
  %call12 = tail call i32 @propval_cell(ptr noundef nonnull %call1) #19
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %unit_addr, i64 noundef 9, ptr noundef nonnull @.str.118, i32 noundef %call12) #19
  %call15 = call i32 @strcmp(ptr noundef nonnull %call, ptr noundef nonnull %unit_addr) #17
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end27, label %do.end22

do.end22:                                         ; preds = %if.end11
  %status23 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status23, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.289, ptr noundef nonnull %unit_addr)
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %if.end11
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %2 = load ptr, ptr %parent, align 8, !tbaa !43
  %addr_cells = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %3 = load i32, ptr %addr_cells, align 8, !tbaa !59
  %cmp28.not = icmp eq i32 %3, 1
  br i1 %cmp28.not, label %if.end41, label %do.end34

do.end34:                                         ; preds = %if.end27
  %status35 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status35, align 4, !tbaa !22
  %call36 = call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.58) #19
  %4 = load ptr, ptr %parent, align 8, !tbaa !43
  %addr_cells38 = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 9
  %5 = load i32, ptr %addr_cells38, align 8, !tbaa !59
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef %call36, ptr noundef nonnull @.str.290, i32 noundef %5)
  %.pre = load ptr, ptr %parent, align 8, !tbaa !43
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %if.end27
  %6 = phi ptr [ %.pre, %do.end34 ], [ %2, %if.end27 ]
  %size_cells = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 10
  %7 = load i32, ptr %size_cells, align 4, !tbaa !60
  %cmp43.not = icmp eq i32 %7, 0
  br i1 %cmp43.not, label %cleanup, label %do.end49

do.end49:                                         ; preds = %if.end41
  %status50 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status50, align 4, !tbaa !22
  %call51 = call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.61) #19
  %8 = load ptr, ptr %parent, align 8, !tbaa !43
  %size_cells53 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 10
  %9 = load i32, ptr %size_cells53, align 4, !tbaa !60
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef %call51, ptr noundef nonnull @.str.291, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end41, %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %unit_addr) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_endpoint(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #0 {
entry:
  %parent = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 4
  %0 = load ptr, ptr %parent, align 8, !tbaa !43
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.node, ptr %0, i64 0, i32 12
  %1 = load ptr, ptr %bus, align 8, !tbaa !61
  %cmp.not = icmp eq ptr %1, @graph_port_bus
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %basenamelen = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 7
  %2 = load i32, ptr %basenamelen, align 8, !tbaa !41
  %cmp2 = icmp eq i32 %2, 8
  br i1 %cmp2, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !26
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) @.str.278, i64 8)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %if.end12, label %do.end

do.end:                                           ; preds = %land.lhs.true, %if.end
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.293)
  br label %if.end12

if.end12:                                         ; preds = %do.end, %land.lhs.true
  tail call fastcc void @check_graph_reg(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %node)
  %call.i = tail call ptr @get_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.279) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @propval_cell(ptr noundef nonnull %call.i) #19
  %4 = add i32 %call1.i, -1
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %if.end4.i, label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %dt.i = getelementptr inbounds %struct.dt_info, ptr %dti, i64 0, i32 3
  %6 = load ptr, ptr %dt.i, align 8, !tbaa !19
  %call5.i = tail call ptr @get_node_by_phandle(ptr noundef %6, i32 noundef %call1.i) #19
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end16

do.end.i:                                         ; preds = %if.end4.i
  %status.i = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status.i, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.295) #19
  br label %cleanup

if.end16:                                         ; preds = %if.end4.i
  %call.i50 = tail call ptr @get_property(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.279) #19
  %tobool.not.i51 = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i51, label %get_remote_endpoint.exit61, label %if.end.i53

if.end.i53:                                       ; preds = %if.end16
  %call1.i52 = tail call i32 @propval_cell(ptr noundef nonnull %call.i50) #19
  %7 = add i32 %call1.i52, -1
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.end4.i57, label %get_remote_endpoint.exit61

if.end4.i57:                                      ; preds = %if.end.i53
  %9 = load ptr, ptr %dt.i, align 8, !tbaa !19
  %call5.i55 = tail call ptr @get_node_by_phandle(ptr noundef %9, i32 noundef %call1.i52) #19
  %tobool6.not.i56 = icmp eq ptr %call5.i55, null
  br i1 %tobool6.not.i56, label %do.end.i59, label %get_remote_endpoint.exit61

do.end.i59:                                       ; preds = %if.end4.i57
  %status.i58 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status.i58, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %call5.i, ptr noundef nonnull %call.i50, ptr noundef nonnull @.str.295) #19
  br label %get_remote_endpoint.exit61

get_remote_endpoint.exit61:                       ; preds = %do.end.i59, %if.end4.i57, %if.end.i53, %if.end16
  %retval.0.i60 = phi ptr [ null, %if.end16 ], [ null, %if.end.i53 ], [ null, %do.end.i59 ], [ %call5.i55, %if.end4.i57 ]
  %cmp18.not = icmp eq ptr %retval.0.i60, %node
  br i1 %cmp18.not, label %cleanup, label %do.end24

do.end24:                                         ; preds = %get_remote_endpoint.exit61
  %status25 = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status25, align 4, !tbaa !22
  %fullpath = getelementptr inbounds %struct.node, ptr %call5.i, i64 0, i32 6
  %10 = load ptr, ptr %fullpath, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef nonnull %dti, ptr noundef nonnull %node, ptr noundef null, ptr noundef nonnull @.str.294, ptr noundef %10)
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %get_remote_endpoint.exit61, %do.end.i, %if.end.i, %if.end12, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_always_fail(ptr nocapture noundef %c, ptr nocapture noundef readonly %dti, ptr noundef %node) #6 {
entry:
  %status = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 5
  store i32 3, ptr %status, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %c, ptr noundef %dti, ptr noundef %node, ptr noundef null, ptr noundef nonnull @.str.297)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @check_nodes_props(ptr noundef %c, ptr noundef %dti, ptr noundef %node) unnamed_addr #0 {
entry:
  %fn = getelementptr inbounds %struct.check, ptr %c, i64 0, i32 1
  %0 = load ptr, ptr %fn, align 8, !tbaa !71
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void %0(ptr noundef nonnull %c, ptr noundef %dti, ptr noundef %node) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %children = getelementptr inbounds %struct.node, ptr %node, i64 0, i32 3
  %child.014 = load ptr, ptr %children, align 8, !tbaa !5
  %tobool2.not15 = icmp eq ptr %child.014, null
  br i1 %tobool2.not15, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %child.016 = phi ptr [ %child.0, %for.inc ], [ %child.014, %if.end ]
  %1 = load i8, ptr %child.016, align 8, !tbaa !23, !range !14
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  tail call fastcc void @check_nodes_props(ptr noundef %c, ptr noundef %dti, ptr noundef nonnull %child.016)
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.016, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !5
  %tobool2.not = icmp eq ptr %child.0, null
  br i1 %tobool2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #16

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"check", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 25, !7, i64 28, !11, i64 32, !12, i64 36, !6, i64 40}
!11 = !{!"_Bool", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !11, i64 24}
!14 = !{i8 0, i8 2}
!15 = !{!10, !11, i64 25}
!16 = !{!10, !12, i64 36}
!17 = !{!10, !6, i64 40}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !6, i64 24}
!20 = !{!"dt_info", !12, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 32}
!21 = !{!10, !11, i64 32}
!22 = !{!10, !7, i64 28}
!23 = !{!24, !11, i64 0}
!24 = !{!"node", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !11, i64 97}
!25 = !{!24, !6, i64 40}
!26 = !{!24, !6, i64 8}
!27 = !{!28, !6, i64 56}
!28 = !{!"property", !11, i64 0, !6, i64 8, !29, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!29 = !{!"data", !12, i64 0, !6, i64 8, !6, i64 16}
!30 = !{!24, !6, i64 88}
!31 = !{!20, !6, i64 32}
!32 = !{!24, !6, i64 48}
!33 = !{!28, !6, i64 8}
!34 = !{!35, !6, i64 24}
!35 = !{!"srcpos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !6, i64 16, !6, i64 24}
!36 = !{!28, !11, i64 0}
!37 = !{!28, !6, i64 40}
!38 = !{!10, !6, i64 16}
!39 = !{!7, !7, i64 0}
!40 = !{!28, !12, i64 16}
!41 = !{!24, !12, i64 56}
!42 = !{!28, !6, i64 24}
!43 = !{!24, !6, i64 32}
!44 = !{!45, !11, i64 0}
!45 = !{!"label", !11, i64 0, !6, i64 8, !6, i64 16}
!46 = !{!45, !6, i64 8}
!47 = !{!28, !6, i64 32}
!48 = !{!49, !7, i64 0}
!49 = !{!"marker", !7, i64 0, !12, i64 4, !6, i64 8, !6, i64 16}
!50 = !{!49, !6, i64 8}
!51 = !{!49, !6, i64 16}
!52 = !{!24, !12, i64 60}
!53 = !{!49, !12, i64 4}
!54 = !{!20, !12, i64 0}
!55 = !{i64 0, i64 4, !18, i64 8, i64 8, !5, i64 16, i64 8, !5}
!56 = !{!24, !6, i64 72}
!57 = !{!24, !11, i64 96}
!58 = !{!24, !11, i64 97}
!59 = !{!24, !12, i64 64}
!60 = !{!24, !12, i64 68}
!61 = !{!24, !6, i64 80}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !7, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!24, !6, i64 24}
!67 = !{!68, !6, i64 0}
!68 = !{!"provider", !6, i64 0, !6, i64 8, !11, i64 16}
!69 = !{!68, !6, i64 8}
!70 = !{!68, !11, i64 16}
!71 = !{!10, !6, i64 8}
